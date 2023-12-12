/// @description space ship movement

if (keyboard_check(vk_up)){	
	sprite_index = spr_nave_movendo;	
	speed = velocity;
} else if (keyboard_check(vk_down)){
	sprite_index = spr_nave_movendo;
	speed = -velocity;
}
else {
	sprite_index = spr_nave_parada;
	speed = lerp(speed, 0, 0.05);
}

if(keyboard_check(vk_left)){
	sprite_index = spr_nave_movendo;
	dir = 3; // + + = + vai somar
} else if(keyboard_check(vk_right)){
	sprite_index = spr_nave_movendo;
	dir = -3; //+ - = - 
} else {
	dir = lerp(dir, 0, 0.08);
}

if keyboard_check_pressed(vk_space){
	// tocando um efeito sonoro de tiro
	audio_play_sound(snd_projetil, 1, false);
	// estamos criando uma instancia de um objeto e guardando-a em uma variável
	var _inst = instance_create_layer(x, y, "Instances", obj_bullet);
	// atribuimos uma nova velocidade a esse obj criado
	_inst.speed = 6;
	_inst.direction = direction;
	_inst.image_angle = image_angle; 
	_inst.dmg = bullet_dmg;
}

if keyboard_check(vk_shift) {
	velocity += 0.1;
} else {
	velocity = 2;
	}

direction += dir;
image_angle = direction;
move_wrap(true, true, 0);

if alarm[0] > 0 {
	if image_alpha <= 0 {
		alpha_add = 0.05;
	} else if image_alpha >= 1{
		alpha_add = -0.05;
	}
	image_alpha += alpha_add;
} else {
	image_alpha = 1;
}

if player_life <= 0 {
	game_restart();
}

// victory condition
if global.points >= 1000 {
	room_goto(rm_final);
}