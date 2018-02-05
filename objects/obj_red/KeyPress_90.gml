/// @description Insert description here
// You can write your code in this editor

dist = point_distance(x, y, obj_gold.x, obj_gold.y);

if (dist < 76 && obj_gold.sprite_index == spr_gold_right){
	if(beginning_text == 0){
		audio_play_sound(snd_press, 2, 0);
		beginning_text = instance_create_layer(x, y, "Text", obj_beginning_text);
		obj_gold.move_speed = 0;
	}
	else
	if(obj_beginning_text.page == 0 || obj_beginning_text.page == 1){
		audio_play_sound(snd_press, 2, 0);
		obj_beginning_text.page += 1;
		obj_beginning_text.char_count = 0;
	}else{
		instance_destroy(beginning_text);
		beginning_text = 0;
		obj_gold.move_speed = 4;
		
		if(mus_start == 0){
			audio_play_sound(snd_vs_red, 1, 1);
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