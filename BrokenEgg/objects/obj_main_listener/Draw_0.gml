// Draw Ending Animation Characters
if final_animation == 1
	{
	// draw_sprite(spr_chicken_idle_pick,sub1,farmer_x+farmer_width,farmer_y+(farmer_height/2));
	// draw_sprite(spr_chicken_idle_sit,sub1,farmer_x,farmer_y-10);
	instance_create_depth(farmer_x,farmer_y-10,-20,obj_chicken);
	instance_create_depth(farmer_x+farmer_width,farmer_y+(farmer_height/2),+20,obj_chicken);
	}
if final_animation == 2
	{
	// draw_sprite(spr_chick_dance,sub1,farmer_x,farmer_y-10);
	// draw_sprite(spr_chick_fly,sub1,farmer_x+farmer_width,farmer_y+(farmer_height/2));
	instance_create_depth(farmer_x+farmer_width,farmer_y+(farmer_height/2),+20,obj_chick);
	instance_create_depth(farmer_x,farmer_y-10,-20,obj_chick);
	}