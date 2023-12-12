/// @description Game Control alarm 0

if room == rm_game {
// quando o alarme desse obj chegar a zero tudo isso abaixo vai acontecer
var _powerup = choose(obj_powerup_bullet, obj_powerup_shield);
instance_create_layer(random_range(0, room_width), random_range(0, room_height), "Instances", _powerup);

// reseta o alarme
alarm[0] = 600;
}