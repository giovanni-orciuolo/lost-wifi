/// @description GAME OVER - Show score text

text_show_score = true;
if (new_score > high_score) {
	alarm[3] = text_rate;
} else {
	alarm[4] = text_rate;
}