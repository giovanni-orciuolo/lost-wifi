/// @description Destroy if dead

if (dead) {
	obj_manager.game_over = true;
	obj_manager.new_score = player_score;
	instance_destroy();
}
