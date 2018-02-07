if(room_get_name(room) == "room0"){
	dist = point_distance(x, y, obj_gold.x, obj_gold.y);

	if (dist < 76 && obj_gold.sprite_index == spr_gold_right && mus_start == 0){
		if(beginning_text == 0){
			audio_play_sound(snd_press, 2, 0);
			beginning_text = instance_create_layer(x, y, "Text", obj_beginning_text);
		}
		else
		if(obj_beginning_text.page == 0 || obj_beginning_text.page == 1){
			audio_play_sound(snd_press, 2, 0);
			obj_beginning_text.page += 1;
			obj_beginning_text.char_count = 0;
		}else{
			instance_destroy(beginning_text);
		
			if(mus_start == 0){
				audio_play_sound(snd_vs_red, 1, 1);
				audio_sound_gain(snd_wind, 0.25, 100);
				mus_start = 1;
			}
		
			var i;
			for(i = 500; i < 10000; i += 500){
				var j;
				for(j = -100; j < 700; j+= 100)
					instance_create_layer(x + i, y - j, "Instances", obj_storm);
			}
		}
	}
}

if(room_get_name(room) == "room2"){
	dist = point_distance(x, y, obj_gold.x, obj_gold.y);
	
	if (dist < 76){
		if(beginning_text == 0){
			audio_play_sound(snd_press, 2, 0);
			beginning_text = instance_create_layer(x, y, "Text", obj_beginning_text);
		}else{
			instance_destroy(beginning_text);
			beginning_text = 0;
		}
	}
}