/// @description  Check For Game Over State

chicks = instance_number(obj_chick);

if chicks >= 5
    {
    global.gameover = 2;
    }

// GAME OVER: fadeout & farmer sprite change
if global.gameover != 0 && global.fade_out == 0
    {
    if counter < counter_max
        {
        counter += 1;
        }
    if counter == counter_max
        {
        farmer_x = (obj_farmer).x;
        farmer_y = (obj_farmer).y;
        farmer_height = (obj_farmer).sprite_height;
        farmer_width = (obj_farmer).sprite_width;
        instance_create(0,0, obj_fade_out);
        alarm[0] = fade_time;
        counter += 1;
        }
    }


// Create chicken on Farmer
if global.ending != 0
	{
	sub1 += 1
	if global.ending == 1
		{
		final_animation = 1
		global.ending = 3;
		}
	if global.ending == 2
		{
		final_animation = 2;
		global.ending = 3;
		}
	}