function hurt_player(player_inst) {
	with (player_inst) {
		if (shield) {
			// Do not take damage while shielded
			return;
		}
		
		if (wifi_level <= 0) {
			dead = true;
			hspeed = 0;
			sprite_index = spr_death_small;
			image_speed = 30 / room_speed;
			return;
		}
		
		wifi_level -= 1000;
		invincible = true;
		
		alarm[2] = 1 * room_speed;
		alarm[3] = 0.1 * room_speed;
	}
}