/// @description Shoot

if (obj_manager.game_over) {
	return;
}

shoot(obj_enemy_bullet, obj_ufo);

alarm[0] = (3 * room_speed) - (obj_manager.difficulty / 20);