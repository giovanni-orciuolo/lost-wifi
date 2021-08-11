/// @description Get hurt

if (!invincible && !other.dead) {
	hurt_player(self);
	kill_enemy(other);
}
