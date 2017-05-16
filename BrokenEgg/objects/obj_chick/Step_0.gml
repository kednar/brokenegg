vsp += grav;

// Horizontal Collision
if (place_meeting(x+hsp,y,obj_collision))
    {
    while (!place_meeting(x+sign(hsp),y,obj_collision))
        {
        x += sign(hsp); // slow down for pixel perfect collision
        }
    hsp = 0;
    dir *= -1;  // make enemy change direction
    }

// Vertical Collision
if (place_meeting(x,y+vsp,obj_collision))
    {
    while (!place_meeting(x,y+sign(vsp),obj_collision))    
        {
        y += sign(vsp);
        }
    vsp = 0;
/*    if (fearofheights) && !position_meeting(x+(sprite_width/2)*dir, y+(sprite_height/2)+8, obj_wall_32x32)
        {
        dir *= -1; // don't fall of ledges if fearofheights = 1
        }    */
    }

// MOVEMENT
if moving = 0 && waiting = 0
    {
    xx = (x-(mother).x);
    dir = -(sign(xx));
    if xx <= -(distance*dir) || xx >= (distance*dir)
        {
        moving = 1;
        sprite_index = spr_chick_walk;
        image_xscale = dir;
        }
    }
    
y += vsp;

if moving == 1
    {
    hsp = dir * movespeed; // basic horizontal movement
    x += hsp;
    xx = (x-(mother).x);
    if ((xx)*(xx)) <= 16 // distance to mother <= 4
        {
        moving = 0;
        sprite_index = spr_chick_dance;
        alarm[0] = 60;
        waiting = 1;
        }
    }

/* */
/// Depth -y
depth = -y;

/* */
/*  */
