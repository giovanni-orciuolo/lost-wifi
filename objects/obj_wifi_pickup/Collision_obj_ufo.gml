// @description Recover wifi signal

with (other) {
	if (wifi_level < 5000) {
		wifi_level += wifi_gain;
	} else {
		obj_manager.player_score += 50;
	}
}

event_inherited();