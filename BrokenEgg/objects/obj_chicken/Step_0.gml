hsp = dir * movespeed; // basic horizontal movement
vsp += grav;

// Check if hit by Egg
if hit = 1
    {
    moving = 1;
    sprite_index = spr_chicken_hit;
    image_xscale = dir;
    alarm[3] = 30;
    hit = 0;
    }

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
    }

    
// MOVEMENT
y += vsp;
if global.gameover == 0
	{
	if (moving == 1)
		{
		//sprite_index = spr_chicken_walk;
		image_xscale = dir;
		x += hsp;
		idle_counter += 1;
		dir_counter += 1;
		stop_counter += 1;
		}
  
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

/// Depth -y
depth = -y;

}