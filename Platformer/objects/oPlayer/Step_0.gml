// get inputs
input();

// calculate movment
var _dir = right - left;
hsp += _dir * walk_spd * accel;

if (_dir == 0) {
	hsp = lerp(hsp, 0, decel);
	if (abs(hsp) < 0.1) hsp = 0;
}

hsp = clamp(hsp, -max_walk_spd, max_walk_spd);

// dashing
if (dash_cooldown > 0) {
	dash_cooldown -= 1;
}
if (dash && dash_cooldown <= 0 && can_dash) {
	is_dashing = true;
	can_dash = false;
	dash_cooldown = dash_cooldown_initial;
}

if (is_dashing) {
	part_particles_create(oDash.particle_system, x, y, oDash.particle_player_fade, 1);
	vsp = 0;
	if (dash_time > 0) {
		dash_time -= 1;
		hsp = lerp(hsp, dash_spd*facing, accel);
	} else {
		is_dashing = false;
		can_dash = true;
		dash_time = dash_time_initial;
	}
} else {
	vsp += grav;
}



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
if (hsp != 0) {
	image_xscale = sign(hsp) * -1
	facing = sign(hsp);
};


if (!on_ground) {
	sprite_index = sPlayerAir
} else {
	if (hsp != 0) {
		sprite_index = sPlayerRun;
	} else {
		sprite_index = sPlayer;
	}
};

















