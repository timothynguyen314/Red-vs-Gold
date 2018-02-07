a = clamp(a + (fade * 0.03), 0, 1);
	
draw_set_color(c_white);
draw_set_alpha(a);
draw_rectangle(0, 0, 1024, 768, 0);