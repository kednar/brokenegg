if hsp != 0
    {
    hsp -= (hdir*(1/timer)); // slow down egg horizontally in right direction
    hatchcounter = 0;
    }

if (vsp < max_vspeed) vsp += grav;

// Vertical Collision
if (place_meeting(x,y+vsp,obj_collision))
    {
    if  vsp >= breaking_point
        {
        instance_create(x,y,obj_egg_splat_stay);
        instance_destroy();
        }
    /*while (!place_meeting(x,y+sign(vsp),obj_collision))
        {
        y += sign(vsp);
        }*/
    vsp = 0;
    }

// Horizontal Collision
if (place_meeting(x+hsp,y,obj_collision))
    {
    /*while (!place_meeting(x+sign(hsp),y,obj_collision))
        {
        x += sign(hsp);
        }*/
    hsp = 0;
    }

// Collision with Chicken
if ((place_meeting(x,y,obj_chicken) && sign(hsp) > 2) || (place_meeting(x,y,obj_chicken) && vsp > 2))
    {
    hit_chicken = instance_nearest(x,y,obj_chicken);
    inst = instance_create((hit_chicken).x,(hit_chicken).y,obj_egg);
    with (inst)
        {
        vsp = -2;
        hsp = hdir*2;
        }
    (hit_chicken).hit = 1;
    instance_destroy();
    }

// Collision with farmer
if (place_meeting(x,y,obj_farmer)) && global.farmer_vulnerable == 1
    {
    if (sign(hsp) > 2) || (vsp > 2)
        {
        //instance_create((other).x,(other).y,obj_egg_splat_head);
        instance_create(x,y,obj_egg_splat_head)
        global.farmer_hit = 1;
        instance_destroy();
        }
    }    
        
// Rotation
image_angle += (hsp * 5);

x += hsp;
y += vsp;

if (hdir == -1 && hsp > 0) || (hdir == 1 && hsp < 0)
    {
    hsp = 0;
    }
   
// hatching
if hsp == 0 && hatching == 0
    {
    hatch_counter += 1;
    if hatch_counter == hatch_delay
        {
        hatching = 1;
        alarm[0] = crack_timer_1;
        alarm[1] = crack_timer_2;
        alarm[2] = crack_timer_3;
        alarm[3] = hatching_timer;
        }
    }

/* */
/// Depth -y
depth = -y;

/* */
/*  */
