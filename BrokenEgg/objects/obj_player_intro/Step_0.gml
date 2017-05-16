/// @description  Get the player's input
key_right = keyboard_check(vk_right);
key_left = -keyboard_check(vk_left);
// key_jump = keyboard_check_pressed(vk_up);
key_fly = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);
key_layegg = keyboard_check_pressed(vk_space);

/// Basic Movement
if can_move == 1
    {
    move = key_left + key_right;
    hsp = move * movespeed;
    hsp_final = hsp;
    }
if (vsp < 3) vsp += grav;

/// Flying
if (key_fly) && (stamina > 5) && can_fly == 1
    {
    flying = 1;
    if (vsp > -flyspeed_max) vsp -= flyspeed;
    stamina -= stamina_loss;
    }

if (place_meeting(x,y+1,obj_collision)) && (stamina < stamina_max)
    {
    stamina += stamina_recovery;
    }

/// EGG CODE

// Code for when still an egg
if is_egg == 1 && hatch_counter >= 0
    {
    sprite_index = spr_egg;
    if hatch_counter >= 2 sprite_index = spr_egg_01;
    if hatch_counter >= 4 sprite_index = spr_egg_02;
    if hatch_counter >= 6 sprite_index = spr_egg_03;
    if keyboard_check_pressed(vk_space)
        {
        vsp -= 1;
        hatch_counter += 1;
        image_angle = round(random_range(0,30));
        }
    if hatch_counter > 7
        {
        instance_create(x,y,obj_broken_egg);
        sprite_index = spr_chick_dance;
        image_angle = 0;
        alarm[2] = 60;
        hatch_counter = -1; // to stop whole process
        }
    }



/// Collisions & Application of movement

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

// Vertical Collision
if (place_meeting(x,y+vsp,obj_collision)) && flying == 0
    {
    /*while (!place_meeting(x,y+sign(vsp),obj_collision))
        {
        y += sign(vsp);
        }*/
    vsp = 0;
    }

x += hsp_final;
y += vsp;

/* */
/// Animate

// Animate
if layegg_animation == 0 && can_move == 1
    {
    if (move != 0)
        {
        image_xscale = move;
        }
    if (place_meeting(x,y+1,obj_collision))
        {
        if (move != 0) sprite_index = spr_chick_walk; else sprite_index = spr_chick_idle;
        }  
    else
        {
        sprite_index = spr_chick_fly;
        }
    }
flying = 0;

/* */
/// Lay Eggs (shit)

if (key_layegg) && (egg_counter >= egg_delay) && can_layegg == 1
    {
    inst = instance_create(x-((global.hdir)*8),y-5,obj_splot);
    with (inst)
        {
        vsp = -2;
        hsp = 3.5*(-global.hdir);
        }
    egg_delay = 120;
    egg_counter = 0;
    sprite_index = spr_chick_dance;
    image_xscale = global.hdir;
    alarm[0] = 40;
    layegg_animation = 1;
    }
egg_counter += 1;

/* */
/// Depth -y
depth = -y;

/* */
/*  */
