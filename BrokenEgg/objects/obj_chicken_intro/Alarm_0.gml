/// @description  Idle Behavior
idle_delay = random_range(60,400);
switch round((random_range(1,4)))
    {
    case 1: sprite_index = spr_chicken_idle_sit; image_xscale = dir; break;
    case 2: sprite_index = spr_chicken_idle_sit; image_xscale = dir; break;
    default: sprite_index = spr_chicken_idle_pick; image_xscale = dir; break;
    }

