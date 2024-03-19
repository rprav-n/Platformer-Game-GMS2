/// @function - fadeout();

function fadein() {
	if (!instance_exists(oFade)) {
		var _fade = instance_create_layer(0, 0, "Other", oFade);
		with(_fade) {
			set_fadein();
			depth = -100;
		}
	}
}