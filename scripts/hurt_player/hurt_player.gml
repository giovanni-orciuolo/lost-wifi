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
			
			if (audio_is_playing(ost_lost_wifi)) {
				audio_stop_sound(ost_lost_wifi);
			}

			audio_play_sound(snd_death3, 10, false);
			return;
		}
		
		audio_play_sound(snd_hurt, 10, false);
		wifi_level -= 800;
		invincible = true;
		
		alarm[2] = 1 * room_speed;
		alarm[3] = 0.1 * room_speed;
	}
}