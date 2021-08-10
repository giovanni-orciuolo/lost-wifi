/// @description Spawn random obstacle

if (game_over) {
	return;
}

// Throw a dice for pickup spawn
if (irandom_range(0, 100) <= 20) {
	// Throw another dice to choose the pickup
	var d = irandom_range(0, 100);
	
	// Wifi: 40%
	if (d <= 40) {
		var pickup = instance_create_layer(
			room_width + 32,
			irandom_range(32, room_height - 32),
			LAYER_INSTANCES,
			obj_wifi_pickup
		);
		pickup.hspeed = -random_range(3, 7);
	}
	// Shield: 20%
	else if (d > 40 && d <= 60) {
		var pickup = instance_create_layer(
			room_width + 32,
			irandom_range(32, room_height - 32),
			LAYER_INSTANCES,
			obj_shield_pickup
		);
		pickup.hspeed = -random_range(4, 7);
	}
	// Fire Rate: 40%
	else if (d > 60 && d <= 100) {
		var pickup = instance_create_layer(
			room_width + 32,
			irandom_range(32, room_height - 32),
			LAYER_INSTANCES,
			obj_fire_rate_pickup
		);
		pickup.hspeed = -random_range(3, 5);
	}
}

// Throw a dice for enemies
var d = irandom_range(0, 100), entity = noone;
if (d <= 50) {
	entity = obj_rock;
}
if (d > 50) {
	entity = obj_alien;
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
			hspeed = -random_range(1, 3) - (obj_manager.difficulty / 20);
		}
	break;
	case obj_alien:
		with (inst) {
			hspeed = -random_range(1, 1.5) - (obj_manager.difficulty / 20);
		}
	break;
}

alarm[0] = (1.5 * room_speed) - difficulty;
