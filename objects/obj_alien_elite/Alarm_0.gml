/// @description Shoot

if (obj_manager.game_over || dead) {
	return;
}

shoot(obj_enemy_bullet, instance_nearest(x, y, obj_ufo));

alarm[0] = (1 * room_speed) - (obj_manager.difficulty / 10);