/// @description Shoot

if (obj_manager.game_over) {
	return;
}

var bullet = instance_create_layer(x, y, LAYER_INSTANCES, obj_enemy_bullet);
with (bullet) {
	speed = 2;
	direction = point_direction(x, y, obj_ufo.x, obj_ufo.y);
}

alarm[0] = 3 * room_speed;