/// @description Destroy if dead

if (dead) {
	if (instance_number(obj_ufo) == 1) {
		// This is a game over: no more ufos standing
		obj_manager.game_over = true;
		obj_manager.new_score = obj_manager.player_score;
	}
	instance_destroy();
}