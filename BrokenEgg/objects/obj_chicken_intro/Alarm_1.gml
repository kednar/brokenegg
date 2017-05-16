/// @description  Change direction
dir = dir*(-1);
idle_delay = random_range(60,600);
sprite_index = spr_chicken_still_NPC;
image_xscale = dir;
if has_been_hit == 1 alarm[3] = 30;

