/// @description Insert description here
// You can write your code in this editor

move_contact_solid(0,0);

t_x = 512;
t_y = 600;


if keyboard_check(ord("Z")){
	if(textbox_1 == 0)
		textbox_1 = instance_create_layer(t_x, t_y, "Text", obj_textbox);
	else{
		instance_destroy(textbox_1);
		textbox_1 = 0;
	}
}