// get inputs
left = keyboard_check(vk_left) || keyboard_check(ord("A"));
right = keyboard_check(vk_right) || keyboard_check(ord("D"));
jump = keyboard_check_pressed(vk_space);
jump_held = keyboard_check(vk_space);

// calculate movment
var _dir = right - left;
hsp += _dir * walk_spd * accel;

if (_dir == 0) {
	hsp = lerp(hsp, 0, decel);
	if (hsp < 0.1) hsp = 0;
}

hsp = clamp(hsp, -max_walk_spd, max_walk_spd);

vsp += grav;

if (coyote_timer > 0) {
	coyote_timer -= 1;
}

if (jump && (on_ground || coyote_timer > 0)) {
	vsp = jump_spd;
}

if (!on_ground && jump_held == 0) {
	vsp = max(vsp, min_jump_spd)
}

vsp = clamp(vsp, -max_vsp, max_vsp);


// collision
if (place_meeting(x+hsp, y, oBlock)) {
	var _onepixel = sign(hsp);
	while(!place_meeting(x+_onepixel, y, oBlock)) {
		x += _onepixel;
	}
	hsp = 0;
}
x += hsp;

if (place_meeting(x, y+vsp, oBlock)) {
	var _onepixel = sign(vsp);
	while(!place_meeting(x, y+_onepixel, oBlock)) {
		y += _onepixel;
	}
	vsp = 0;
}
y += vsp;

// current status
on_ground = place_meeting(x, y+1, oBlock);
if (on_ground) {
	coyote_timer = coyote_timer_initial;
}


// animations
if (hsp != 0) image_xscale = sign(hsp) * -1;


if (!on_ground) {
	sprite_index = sPlayerAir
} else {
	if (hsp != 0) {
		sprite_index = sPlayerRun;
	} else {
		sprite_index = sPlayer;
	}
};

















