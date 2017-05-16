/// @description  Initialize Variables

randomize()

alive = 1;
dir = -1;
movespeed = 1;
grav = 0.1;
hsp = 0;
vsp = 0;
has_been_hit = 0;

egg_counter = 0;
egg_delay = 60;

moving = 1;
walking = 1;
hit = 0;

idle_counter = 0;
dir_counter = 0;
stop_counter = 0;

idle_delay = random_range(60,400); // idle counter
dir_delay = random_range(60,600); // direction counter
stop_delay = random_range(60,200); // just stop for a second counter

