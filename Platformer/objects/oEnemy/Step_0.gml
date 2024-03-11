hsp += dir * walk_spd * accel;
hsp = clamp(hsp, -max_hsp, max_hsp);

vsp += grav;
vsp = clamp(vsp, -max_vsp, max_vsp);


if (place_meeting(x+hsp, y, oBlock)) {
	var _onepixel = sign(hsp);
	while(!place_meeting(x+_onepixel, y, oBlock)) {
		x += _onepixel;
	}
	dir *= -1;
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

// animation
if (hsp != 0) image_xscale = sign(hsp) * -1; // -1 is because the enemy sprite is facing left at start