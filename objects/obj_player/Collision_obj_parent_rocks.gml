/// @description collision between Player and the rocks

// o "alarm" é uma espécie de "temporizador", assim, 
// o player não vai ficar recebendo dano por frame de colisão

if alarm[0] <= 0 {
	if shield == true
	{	
		shield = false;
	} else {
		player_life -= 1;
	}

	
	with (other){
		r_life -= 1;
	}
	
	// knockback hit reset
	alarm[0] = 180; // 180 == 3 segundos de intervalo 
} 


