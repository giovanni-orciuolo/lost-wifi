/// @description Invincibility blink
if (!invincible) {
	return;
}

show = !show;
alarm[3] = 0.1 * room_speed;
