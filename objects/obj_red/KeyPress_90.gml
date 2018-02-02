/// @description Insert description here
// You can write your code in this editor

dist = point_distance(x, y, obj_gold.x, obj_gold.y);

if (dist < 76 && obj_gold.sprite_index == spr_gold_right){
	if(beginning_text == 0){
		beginning_text = instance_create_layer(x, y, "Text", obj_textbox);
		obj_gold.move_speed = 0;
	}
	else{
		instance_destroy(beginning_text);
		beginning_text = 0;
		obj_gold.move_speed = 4;
	}
}