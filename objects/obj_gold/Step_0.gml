if(room_get_name(room) == "room0"){
	if(beginning_position == 1){
		x = x - 4;
		if(x <= 288){
			beginning_position = 0;
			room_goto(room1);
		}
	}else
	if(obj_red.beginning_text == 0 && room_get_name(room) != "room1"){
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
}

if(room_get_name(room) == "room2"){
	if(keyboard_check(vk_right)){
		sprite_index = spr_gold_right;
		x = x + move_speed;
	}else
	if(keyboard_check(vk_left)){
		sprite_index = spr_gold_left;
		x = x - move_speed;
	}else
	if(keyboard_check(vk_up)){
		sprite_index = spr_gold_up;
		y = y - move_speed;
	}else	
	if(keyboard_check(vk_down)){
		sprite_index = spr_gold_down;
		y = y + move_speed;
	}


	if(keyboard_check(ord("X")))
		move_speed = 8;
	else
		move_speed = 4;
	
}