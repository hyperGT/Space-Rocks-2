/// @description update the rock state

move_wrap(true, true, 1);
image_angle += rotation;

if (r_life <= 0){	
	audio_play_sound(snd_explosao_asteroide, 1, false);
	// repeat use example, a new loop structure
	repeat(3){
		instance_create_layer(x, y, "Instances", obj_rock);
	}
	
	repeat(10){instance_create_layer(x, y, "Instances", obj_detritos);}
	global.points += 100;
	instance_destroy();	
}





