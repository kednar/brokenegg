/// @description  Main listener

hatch_counter = (player).hatch_counter;
xx = (player).x;
yy = (player).y;

// Need more SPACE
if hatch_counter == 3
    {
    text1_active = 0;
    text2_active = 1;
    }

// RIGHT ARROW
if hatch_counter >= 7
    {
    text2_active = 0;
    text3_active = 1;
    }

// UP KEY
if xx >= 135 && intro_check1 == 0
    {
    alarm[0] = 20; // enable flying
    text3_active = 0;
    text4_active = 1;
    text5_active = 1;
    intro_check1 = 1;
    intro_check2 = 0;
    }

// Flying
if intro_check2 == 0
    {
    if xx >= 160 || yy <= 100
        {
        (player).movespeed = 1.5;
        zooming = 1;
        intro_check2 = 1;
  
        }
    }

// Too weak
if intro_check3 == 0
    {
    if xx >= (obj_intro_text_6).x
        {
	    text4_active = 0;
        text6_active = 1;
        intro_check3 = 1;
        intro_check4 = 0;
        }
    }

// Soon
if intro_check4 == 0
    {
    if xx >= (obj_intro_text_7).x
        {
		text5_active = 0;
        text7_active = 1;
        intro_check4 = 1;
        intro_check5 = 0;
        }
    }

// must find a way
if intro_check5 == 0
    {
    if xx >= (obj_intro_text_8).x
        {
        text8_active = 1;
        intro_check5 = 1;
        intro_check6 = 0;
        }
    }

// to break free
if intro_check6 == 0
    {
    if xx >= (obj_intro_text_9).x
        {
        text9_active = 1;
        intro_check6 = 1;
        alarm[1] = 120; // fade to black, next room
        }
    }

/// Zooming Out

if zooming == 1
    {
    __view_set( e__VW.HView, 0, __view_get( e__VW.HView, 0 ) + (((180-45)/150)) );
    __view_set( e__VW.WView, 0, __view_get( e__VW.WView, 0 ) + (((360-90)/150)) );
    __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) - ((70/150)) );
    size += (0.25/150);
    __view_set( e__VW.Object, 0, obj_player_intro );
    if __view_get( e__VW.HView, 0 ) >= 180 zooming = 0;
    }

var __b__;
__b__ = action_if_variable(global.faded_out, 1, 0);
if __b__
{
{
action_next_room();
}
}
