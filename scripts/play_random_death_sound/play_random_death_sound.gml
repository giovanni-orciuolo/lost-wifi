function play_random_death_sound() {
	audio_play_sound(choose(
		snd_death1,
		snd_death2,
	), 10, false);
}