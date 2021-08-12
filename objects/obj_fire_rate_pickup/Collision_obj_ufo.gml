// @description Increase fire rate

with (other) {
	fire_rate = 0.3;
	alarm[5] = (10 * room_speed) - (obj_manager.difficulty * 7.5);
}

event_inherited();