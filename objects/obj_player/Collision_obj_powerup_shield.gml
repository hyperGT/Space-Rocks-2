/// @description collision with the shield powerup upgrade

audio_play_sound(snd_melhoria, 1, false); 

alarm[1] = 540; // 9 segundos
shield = true;

with (other){
	instance_destroy();
}