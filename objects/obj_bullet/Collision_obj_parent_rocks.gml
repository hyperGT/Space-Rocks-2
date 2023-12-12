/// @description bullet collision WITH rock code
// You can write your code in this editor
audio_play_sound(snd_hit, 1, false);
var _dmg = dmg;

// shorten the life of the asteroid
with (other){
	// esse código está acontecendo lá no obj 
	// que esta sofrendo a colisão, portanto, usar uma variável 
	// exclusiva deste obj aqui não vai funcionar.
	r_life -= _dmg;
}

// destroy the bullet
instance_destroy();





