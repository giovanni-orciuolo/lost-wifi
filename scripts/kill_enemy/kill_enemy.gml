function kill_enemy(enemy_instance) {
	with (enemy_instance) {
		if (dead) {
			return;
		}
		
		if (random(100) <= loot_percent - (obj_manager.difficulty / 10)) {
			var wifi = instance_create_layer(x, y, LAYER_INSTANCES, obj_wifi_pickup);
			wifi.hspeed = hspeed;
		}

		dead = true;
		hspeed = 0;
		sprite_index = spr_death_small;
		image_speed = 30 / room_speed;
		
		obj_manager.player_score += score_reward;
		
		audio_play_sound(snd_crash, 10, false);
	}
}