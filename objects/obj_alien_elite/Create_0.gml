/// @description Initialize movement
event_inherited();

hspeed = -2;
timer = 0;
max_oscill = irandom_range(60, 90);

score_reward = 50;
timer_inc = random_range(1, 3);

alarm[0] = 1;