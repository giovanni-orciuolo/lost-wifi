/// @description Armonic movement

if (!dead) {
	y = sin_oscillate(-max_oscill, max_oscill, timer) + (room_height / 2);
	timer += timer_inc;
}