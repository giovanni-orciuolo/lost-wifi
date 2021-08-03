/// @description Spawn random obstacle

if (game_over) {
	return;
}

var d = random_range(0, 100), entity = noone;
if (d >= 0 && d <= 50) {
	entity = obj_rock;
}
if (d > 50) {
	entity = obj_alien;
}

if (random_range(0, 100) <= 20) {
	var pickup = instance_create_layer(
		room_width + 32,
		irandom_range(32, room_height - 32),
		LAYER_INSTANCES,
		obj_wifi_pickup
	);
	pickup.hspeed = -random_range(3, 5);
}

var inst = instance_create_layer(
	room_width + 32,
	irandom_range(32, room_height - 32),
	LAYER_INSTANCES,
	entity
);

switch (entity) {
	case obj_rock:
		with (inst) {
			hspeed = -random_range(1, 3);
		}
	break;
	case obj_alien:
		with (inst) {
			hspeed = -random_range(1, 1.5);
		}
	break;
}

alarm[0] = (1.5 * room_speed) - difficulty;
