// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = -1; // obj_chick
global.__objectDepths[1] = -200; // obj_egg_splat
global.__objectDepths[2] = 0; // obj_egg
global.__objectDepths[3] = 0; // obj_chicken
global.__objectDepths[4] = -200; // obj_egg_splat_stay
global.__objectDepths[5] = -200; // obj_egg_splat_head
global.__objectDepths[6] = 0; // obj_main_listener
global.__objectDepths[7] = -200; // obj_broken_egg
global.__objectDepths[8] = 0; // obj_player
global.__objectDepths[9] = -160; // obj_farmer
global.__objectDepths[10] = 0; // obj_intro_text_3
global.__objectDepths[11] = 0; // obj_intro_text_8
global.__objectDepths[12] = 0; // obj_intro_text_4
global.__objectDepths[13] = 0; // obj_intro_text_2
global.__objectDepths[14] = 0; // obj_intro_listener
global.__objectDepths[15] = 0; // obj_intro_text_5
global.__objectDepths[16] = 0; // obj_intro_text_1
global.__objectDepths[17] = 0; // obj_intro_text_0
global.__objectDepths[18] = 0; // obj_intro_text_6
global.__objectDepths[19] = 0; // obj_player_intro
global.__objectDepths[20] = 0; // obj_intro_text_7
global.__objectDepths[21] = 0; // obj_intro_text_9
global.__objectDepths[22] = 12; // obj_haus
global.__objectDepths[23] = 0; // obj_platform
global.__objectDepths[24] = -100; // obj_splot
global.__objectDepths[25] = 0; // obj_chicken_intro
global.__objectDepths[26] = 0; // obj_title_listener
global.__objectDepths[27] = -300; // obj_fade_in
global.__objectDepths[28] = 10; // obj_hay
global.__objectDepths[29] = -300; // obj_title_ani
global.__objectDepths[30] = -300; // obj_fade_out
global.__objectDepths[31] = 10; // obj_barrel
global.__objectDepths[32] = 0; // obj_collision
global.__objectDepths[33] = 10; // obj_box


global.__objectNames[0] = "obj_chick";
global.__objectNames[1] = "obj_egg_splat";
global.__objectNames[2] = "obj_egg";
global.__objectNames[3] = "obj_chicken";
global.__objectNames[4] = "obj_egg_splat_stay";
global.__objectNames[5] = "obj_egg_splat_head";
global.__objectNames[6] = "obj_main_listener";
global.__objectNames[7] = "obj_broken_egg";
global.__objectNames[8] = "obj_player";
global.__objectNames[9] = "obj_farmer";
global.__objectNames[10] = "obj_intro_text_3";
global.__objectNames[11] = "obj_intro_text_8";
global.__objectNames[12] = "obj_intro_text_4";
global.__objectNames[13] = "obj_intro_text_2";
global.__objectNames[14] = "obj_intro_listener";
global.__objectNames[15] = "obj_intro_text_5";
global.__objectNames[16] = "obj_intro_text_1";
global.__objectNames[17] = "obj_intro_text_0";
global.__objectNames[18] = "obj_intro_text_6";
global.__objectNames[19] = "obj_player_intro";
global.__objectNames[20] = "obj_intro_text_7";
global.__objectNames[21] = "obj_intro_text_9";
global.__objectNames[22] = "obj_haus";
global.__objectNames[23] = "obj_platform";
global.__objectNames[24] = "obj_splot";
global.__objectNames[25] = "obj_chicken_intro";
global.__objectNames[26] = "obj_title_listener";
global.__objectNames[27] = "obj_fade_in";
global.__objectNames[28] = "obj_hay";
global.__objectNames[29] = "obj_title_ani";
global.__objectNames[30] = "obj_fade_out";
global.__objectNames[31] = "obj_barrel";
global.__objectNames[32] = "obj_collision";
global.__objectNames[33] = "obj_box";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for