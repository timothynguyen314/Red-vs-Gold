/// @description Insert description here
// You can write your code in this editor

if(beginning_position == 1){
	x = x - 4;
	if(x < 320)
		beginning_position = 0;
}else
if(obj_red.beginning_text == 0){
	if(keyboard_check(vk_right)){
		sprite_index = spr_gold_right;
		x = x + move_speed;
	}else
	if(keyboard_check(vk_left)){
		sprite_index = spr_gold_left;
		x = x - move_speed;
	}else
	if(keyboard_check(vk_up))
		sprite_index = spr_gold_up;
	else	
	if(keyboard_check(vk_down))
		sprite_index = spr_gold_down;


	if(keyboard_check(ord("X")))
		move_speed = 8;
	else
		move_speed = 4;
}