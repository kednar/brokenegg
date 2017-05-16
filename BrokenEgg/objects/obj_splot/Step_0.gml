if hsp != 0 && timer > 5
    {
    hsp -= (hdir*(1/timer)); // slow down egg horizontally in right direction
    timer -= 1;
    }

if (vsp < max_vspeed) vsp += grav;

// Vertical Collision
if (place_meeting(x,y+vsp,obj_collision))
    {
    instance_destroy();
    }

// Horizontal Collision
if (place_meeting(x+hsp,y,obj_collision))
    {
    hsp = 0;
    }

// Collision with Chicken
if (place_meeting(x,y,obj_chicken) && sign(hsp) > 2)
    {
    hit_chicken = instance_nearest(x,y,obj_chicken);
    (hit_chicken).hit = 1;
    instance_destroy();
    }

if ((place_meeting(x,y,obj_chicken) && vsp > 2))    
    {
    hit_chicken = instance_nearest(x,y,obj_chicken);
    (hit_chicken).hit = 1;
    instance_destroy();
    }

/*
// Collision with farmer
if (place_meeting(x,y,obj_farmer))
    {
    if (sign(hsp) > 2) || (vsp > 2)
        {
        if ((obj_farmer).vulnerable == 0)
            {
            //instance_create((other).x,(other).y,obj_egg_splat);
            instance_create(x,y,obj_egg_splat);
            }
        else
            {
            //instance_create((other).x,(other).y,obj_egg_splat_head);
            instance_create(x,y,obj_egg_splat_head)
            (obj_farmer).hit = 1;
            (obj_farmer).sprite_index = spr_farmer_hit;
            (obj_farmer).alarm[3] = 45;
            (obj_farmer).hearts -= 1;
            (obj_farmer).just_hit = 1;
            }
        instance_destroy();
        }
    }    
*/

x += hsp;
y += vsp;

/* */
/*  */
