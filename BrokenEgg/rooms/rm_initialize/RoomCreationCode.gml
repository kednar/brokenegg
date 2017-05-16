var global.hdir = 1; // for egg propulsion direction
global.fade_out = 0;
global.faded_out = 0;
global.fade_in = 0;
global.faded_in = 0;
global.gameover = 0;

globalvar f_effort;
global.f_effort = font_add_sprite(spr_effort,ord("!"),0,1);

room_goto_next();