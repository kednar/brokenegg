/// @description  Display Intro Text
draw_set_font(f_effort);

/*var i;
length = array_length_1d(intro_text);
for (i = 0; i < length-1; i += 1)
    {
    location = text_object[i];
    xx = (location).x;
    yy = (location).y;
    script_execute(scr_display_text,xx,yy,intro_text[i])
    }
if passed_400 == 1 
*/

if text0_active == 1 draw_text_ext_transformed((obj_intro_text_0).x, (obj_intro_text_0).y, string_hash_to_newline(string(intro_text[0])), 30, 400, size, size, image_angle);
if text1_active == 1 draw_text_ext_transformed((obj_intro_text_1).x, (obj_intro_text_1).y, string_hash_to_newline(string(intro_text[1])), 30, 400, size, size, image_angle);
if text2_active == 1 draw_text_ext_transformed((obj_intro_text_2).x, (obj_intro_text_2).y, string_hash_to_newline(string(intro_text[2])), 30, 400, size, size, image_angle);
if text3_active == 1 draw_text_ext_transformed((obj_intro_text_3).x, (obj_intro_text_3).y, string_hash_to_newline(string(intro_text[3])), 30, 400, size, size, image_angle);
if text4_active == 1 draw_text_ext_transformed((obj_intro_text_4).x, (obj_intro_text_4).y, string_hash_to_newline(string(intro_text[4])), 10, 400, size, size, image_angle);
if text5_active == 1 draw_text_ext_transformed((obj_intro_text_5).x, (obj_intro_text_5).y, string_hash_to_newline(string(intro_text[5])), 20, 400, size, size, image_angle);
if text6_active == 1 draw_text_ext_transformed((obj_intro_text_6).x, (obj_intro_text_6).y, string_hash_to_newline(string(intro_text[6])), 30, 400, size, size, image_angle);
if text7_active == 1 draw_text_ext_transformed((obj_intro_text_7).x, (obj_intro_text_7).y, string_hash_to_newline(string(intro_text[7])), 30, 400, size, size, image_angle);
if text8_active == 1 draw_text_ext_transformed((obj_intro_text_8).x, (obj_intro_text_8).y, string_hash_to_newline(string(intro_text[8])), 30, 400, size, size, image_angle);
if text9_active == 1 draw_text_ext_transformed((obj_intro_text_9).x, (obj_intro_text_9).y, string_hash_to_newline(string(intro_text[9])), 30, 400, size, size, image_angle);

/* */
/*  */
