draw_sprite(spr_textbox, 0, x, y);
draw_set_font(font0);
draw_set_color(c_black);

if(char_count < string_length(text[page]))
	char_count += 3;
text_part = string_copy(text[page], 1, char_count);

draw_text_ext(x - 180, y + 80, text_part, textbox_height, textbox_width);