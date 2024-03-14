if (fade_out) {
	h = lerp(h, half_h+buff, fade_spd);
	h2 = lerp(h2, half_h-buff, fade_spd);
	if floor(h) >= (half_h+buff) || floor(h2) <= (half_h-buff) {
		room_goto(target_room);
		instance_destroy();
	}
} else {
	h = lerp(h, 0, fade_spd);
	h2 = lerp(h2, full_h, fade_spd);
	
	if floor(h) <= 0+buff || floor(h2) >= full_h+buff {
		instance_destroy();
	}
}