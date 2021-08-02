/// @description Die

if (random(100) <= loot_percent - (obj_manager.difficulty / 10)) {
	var wifi = instance_create_layer(x, y, LAYER_INSTANCES, obj_wifi_pickup);
	wifi.hspeed = hspeed;
}
with (other) instance_destroy();

dead = true;
hspeed = 0;
sprite_index = spr_death_small;
image_speed = 30 / room_speed;

obj_ufo.player_score += score_reward;
