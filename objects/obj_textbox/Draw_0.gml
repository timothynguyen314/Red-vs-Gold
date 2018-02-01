/// @description Insert description here
// You can write your code in this editor

draw_sprite(spr_textbox, 0, x, y);
draw_set_font(font0);
draw_set_color(c_black);
draw_text_ext(x+16, y+8, text, textbox_height, textbox_width);