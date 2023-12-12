/// @description Desenhar informações do player na tela

draw_set_font(fnt_space);

// criando variável cor
var _c = make_color_rgb(131, 68, 87);

var _width = display_get_width();
var _height = display_get_height();

if room == rm_menu { 
	if alpha <= 0 {
		alpha_add = 0.05;
	} else if alpha >= 1{
		alpha_add -= 0.05;
	}
	
	alpha += alpha_add;
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	draw_text_ext_color(_width/2, _height/3, "Your objective is to collect 1000 points by destroying the asteroids", 30, 500, c_white, c_white, c_white, c_white, 1);	
	draw_text_color(_width/2, _height - _height/3, "Press Space to Start", _c, _c, _c, _c, alpha);	
	
	if keyboard_check_pressed(vk_space){room_goto(rm_game);}
	
} else if room == rm_game {
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	// string que vai ser desenhada e sua posição
	var _str = "points: " + string(global.points) + "\n" + "Damage: " + string(obj_player.bullet_dmg);
	draw_text_color(20, 20, "Lives: " + string(obj_player.player_life), _c, _c, _c, _c, 1);
	draw_text(20, 40, _str);
} else if room == rm_final {
	draw_set_halign(fa_center); // h align have left, center and right
	draw_set_valign(fa_middle) // vertical align have top, middle and bottom
	draw_text_ext_color(_width / 2, _height / 2, "Level 1 completed,\nPress 'R' if" + 
	" you want to play again, \n Or press F if you want to exit the game", 80, 900, _c, _c, _c, _c, 1);
	
	if keyboard_check_pressed(ord("R")) {
		game_restart();
	}
}
