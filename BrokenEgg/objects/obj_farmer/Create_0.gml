/// @description  Initialize Variables

randomize()

dir = 1;
movespeed = 0.75;
hsp = 0;

searching = 0;
picking = 0;
global.farmer_hit = 0;
just_hit = 0;
global.farmer_vulnerable = 0;

hearts = 3;
dead = 0;
distance = 1;

picking_time = 40; // frames until egg disappears
picking_time_total = 130; // total frames for picking animation
hit_time = 10; // moment from which on the farmer is vulnerable

nearest_egg = (obj_player);
xx = 0;

