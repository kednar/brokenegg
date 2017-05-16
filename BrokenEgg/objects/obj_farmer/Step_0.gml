/*
//what is this??? some way to frame the whole code as live state?
var __b__;
__b__ = action_if_variable(hearts, 0, 2);
if __b__
{
{
*/


/// MAIN LOOP
hsp = dir * movespeed; // basic horizontal movement

// Horizontal Collision
if (x+hsp <= 5) || (x + hsp >= 635)
    {
    dir *= -1;  // make farmer change direction
    }

// Check for Egg
if searching == 0 && picking == 0 && instance_exists(obj_egg)
    {
    nearest_egg = instance_nearest(x,y+(sprite_height/2),obj_egg);
    searching = 1;
    }

// Looking for an egg
if searching == 1 && picking == 0 && global.farmer_hit == 0
    {
    if instance_exists((nearest_egg)) // check if egg still exists
        {
        x_egg = (nearest_egg).x;
        xx = (x-(x_egg));
        dir = -(sign(xx));
        if ((xx)*(xx)) <= distance && (nearest_egg).hatching == 1 // distance to egg squared
            {
            sprite_index = spr_farmer_pick;
            alarm[0] = picking_time; // moment the egg needs to disappear
            alarm[1] = picking_time_total; // moment the animation is over, farmer invulnerable
            alarm[2] = hit_time; // moment from which on the farmer is vulnerable
            picking = 1;
            hsp = 0;
            }
        }
    else
        {
        searching = 0;
        sprite_index = spr_farmer_idle_small;
        }
    }

// Only move when not picking
if picking == 0
    {
    x += hsp;
    }

// Animate
if global.farmer_hit == 0 && picking == 0
    {
    if hsp != 0 sprite_index = spr_farmer_walk_small;
		{
		image_xscale = -dir;
		}
	}
else
	{
	// when hit, auto self destructs through 
	if global.farmer_hit == 1
		{
		sprite_index = spr_farmer_hit;
		alarm[3] = 45;
		just_hit = 1;
		}
/// Engage Fainting Mode
	if hearts == 0
		{
		sprite_index = spr_farmer_faint;
		alarm[4] = 142; //  End animation, spawn last frame
		alarm[5] = 70; // Create platform on farmer
		global.gameover = 1;
		}
    }