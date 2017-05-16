/// @description  Get the player's input
key_right = keyboard_check(vk_right);
key_left = -keyboard_check(vk_left);
//key_jump = keyboard_check_pressed(vk_up);
key_fly = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);
key_layegg = keyboard_check_pressed(vk_space);

/// Basic Movement Equations / Gravity
move = key_left + key_right;
hsp = move * movespeed;
hsp_final = hsp;
if (vsp < 3) vsp += grav;

/// Flying
if (key_fly) && (stamina > 7)
    {
    flying = 1;
    if (vsp > -flyspeed_max) vsp -= flyspeed;
    stamina -= stamina_loss;
    }

if (place_meeting(x,y+1,obj_collision)) && (stamina < stamina_max)
    {
    stamina += stamina_recovery;
    }

/*
// Jumping
if (place_meeting(x,y+1,obj_collision)) 
    {
    jumps = jumpsmax;
    }

if (key_jump) && (jumps > 0)// && just_jumped = 0
    {
    just_jumped = 1;
    alarm[1] = 20;
    if vsp > -max_jumpspeed
        {
        vsp -= jumpspeed;
        jumps -= 1;
        }
    }
*/    



/* */
/// Collisions + Actual Movement

// Horizontal Collision
if ((x+hsp_final) < 10) || ((x+hsp_final) > room_width-10)
    {
    /*while (!place_meeting(x+sign(hsp_final),y,obj_collision))
        {
        x += sign(hsp_final);
        }*/
    hsp_final = 0;
    hsp = 0;
    }
x += hsp_final;

// Vertical Collision
if (place_meeting(x,y+vsp,obj_collision)) && flying == 0
    {
    /*while (!place_meeting(x,y+sign(vsp),obj_collision))
        {
        y += sign(vsp);
        }*/
    vsp = 0;
    }
y += vsp;

/* */
/// Animate

/*
// turn red with stamina loss
if spr_create
   {
   spr_create = false;
   var surf, spr;
   surf = surface_create(sprite_get_width(obj_player(sprite_index)), sprite_get_height((obj_player(sprite_index).fadeAlpha);
   surface_set_target(surf);
   draw_clear_alpha(c_black, 0);
   draw_sprite(spr_Gradient, 0, 0, 0);
   sprite_index = sprite_create_from_surface(surf, 0, 0, sprite_width, sprite_height, false, false, sprite_get_xoffset(spr_Gradient), sprite_get_xoffset(spr_Gradient));
   draw_clear_alpha(c_black, 0);
   draw_sprite(spr_Explosion_Alpha, 0, sprite_get_xoffset(spr_Gradient), sprite_get_xoffset(spr_Gradient));
   spr = sprite_create_from_surface(surf, 0, 0, sprite_width, sprite_height, false, false, sprite_get_xoffset(spr_Gradient), sprite_get_xoffset(spr_Gradient));
   surface_reset_target();
   surface_free(surf);
   sprite_set_alpha_from_sprite(sprite_index, spr);
   sprite_delete(spr);
   }
draw_sprite(sprite_index, 0, x, y);
*/

// lay an egg animation
if layegg_animation == 0
{
    if (move != 0)
    {
    image_xscale = move;
    }
if (place_meeting(x,y+1,obj_collision))
    {
    if (move != 0) sprite_index = spr_chicken_run; else sprite_index = spr_chicken_still;
    }
else
    {
    if (vsp < 0) || flying == 1 // || just_jumped = 1
        {
        sprite_index = spr_chicken_fly;
        }
    else sprite_index = spr_chicken_fall;
    }
}
flying = 0;

/* */
/// Lay Eggs
if (key_layegg) && (egg_counter >= egg_delay)
    {
    inst = instance_create(x-((global.hdir)*8),y-5,obj_egg);
    with (inst)
        {
        vsp = -2;
        hsp = 3.5*(-global.hdir);
        }
    egg_delay = 120;
    egg_counter = 0;
    sprite_index = spr_chicken_layegg;
    image_xscale = global.hdir;
    alarm[0] = 20;
    layegg_animation = 1;
    }
egg_counter += 1;

/* */
/// Depth -y
depth = -y;

/* */
/*  */
