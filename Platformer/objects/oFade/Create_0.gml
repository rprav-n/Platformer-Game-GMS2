fade_out = false;
full_w = display_get_gui_width();
full_h = display_get_gui_height();
half_h = full_h / 2;
fade_spd = 0.05;
target_room = room;
buff = 5;
h = 0;
h2 = 0;

function set_fadein() {
	h = half_h;
	h2 = half_h;
}

function set_fadeout() {
	h = 0;
	h2 = full_h;
}
