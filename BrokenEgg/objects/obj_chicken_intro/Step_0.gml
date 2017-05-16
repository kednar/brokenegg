if has_been_hit == 1
    {
    hsp = dir * movespeed; // basic horizontal movement
    vsp += grav;
    }

// Horizontal Collision
if (place_meeting(x+hsp,y,obj_collision))
    {
    /*while (!place_meeting(x+sign(hsp),y,obj_collision))
        {
        x += sign(hsp); // slow down for pixel perfect collision
        }*/
    hsp = 0;
    dir *= -1;  // make enemy change direction
    }

// Vertical Collision
if (place_meeting(x,y+vsp,obj_collision))
    {
    /*while (!place_meeting(x,y+sign(vsp),obj_collision))    
        {
        y += sign(vsp);
        }*/
    vsp = 0;
    }

// Check if hit by Egg
if hit = 1
    {
    sprite_index = spr_chicken_hit;
    image_xscale = dir;
    hsp = 3 * dir * movespeed;
    alarm[3] = 30;
    alarm[4] = 30;
    has_been_hit = 1;
    hit = 0;
    walking = 0;
    }
    
// MOVEMENT
if moving == 1
    {
    y += vsp;
    x += hsp;
    if walking == 1
        {
        sprite_index = spr_chicken_walk;
        image_xscale = dir;
        idle_counter += 1;
        dir_counter += 1;
        stop_counter += 1;
        }
    }

// 
if idle_counter >= idle_delay
    {
    moving = 0;
    alarm[0] = 1;
    idle_counter = 0;
    }
    
if dir_counter >= dir_delay
    {
    moving = 0;
    alarm[1] = 1;
    dir_counter = 0;
    }

if stop_counter >= stop_delay
    {
    moving = 0;
    alarm[2] = 1;
    stop_counter = 0;
    }

/* */
/// Depth -y
depth = -y;

/* */
/*  */
