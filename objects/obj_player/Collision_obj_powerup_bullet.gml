/// @description collision with the bullet powerup upgrade

audio_play_sound(snd_melhoria, 1, false);

alarm[2] = 300; // 5 segundos
bullet_dmg = 2;

with (other){
	instance_destroy();
}






