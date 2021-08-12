/// @description Hurts

if (!invincible && !other.dead) {
	hurt_player(self);
	kill_enemy(other);
}
