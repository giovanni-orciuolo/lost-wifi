/// @description Destroy if dead

if (dead && instance_number(obj_ufo) == 1) {
	obj_manager.game_over = true;
	obj_manager.new_score = obj_manager.player_score;
	instance_destroy();
}
