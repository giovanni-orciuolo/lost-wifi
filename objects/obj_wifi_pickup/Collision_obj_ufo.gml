// @description Recover wifi signal

with (other) {
	if (wifi_level < 5000) {
		wifi_level += wifi_gain;
	}
}

event_inherited();