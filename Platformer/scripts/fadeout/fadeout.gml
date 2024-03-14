/// @function - fadeout();

function fadeout() {
	if (!instance_exists(oFade)) {
		var _fade = instance_create_layer(0, 0, "Other", oFade);
		with (_fade) {
			fade_out = true;
			h = 0;
			h2 = full_h;
			set_fadeout();
		}
	}
}