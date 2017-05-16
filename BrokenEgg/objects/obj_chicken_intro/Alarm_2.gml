/// @description  Stop for a second
sprite_index = spr_chicken_still_NPC;
image_xscale = dir;
stop_delay = random_range(60,200);
if has_been_hit == 1 alarm[3] = 30;

