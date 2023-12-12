/// @description Insert description here
// You can write your code in this editor

move_wrap(true, true, 1);
image_angle += rotation;

if (r_life <= 0){
	audio_play_sound(snd_explosao_asteroide, 1, false);
	repeat(6){
		instance_create_layer(x, y, "Instances", obj_smallest_rock);
	}	
	repeat(8){instance_create_layer(x, y, "Instances", obj_detritos);}
	global.points += 70;
	instance_destroy();
}




