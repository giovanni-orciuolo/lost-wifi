/// @param
function hurt_player() {
	with (obj_ufo) {
		if (wifi_level <= 0) {
			dead = true;
			hspeed = 0;
			sprite_index = spr_death_small;
			image_speed = 30 / room_speed;
			return;
		}
		
		wifi_level -= 250;
		invincible = true;
		player_score -= 10;
		player_score = max(player_score, 0);
		alarm[2] = 1 * room_speed;
		alarm[3] = 0.1 * room_speed;
	}
}