if (is_dashing) {
	with (other) {
		instance_destroy();
	}
} else {
	slideTransition(TRANS_MODE.RESTART);
	instance_destroy();
}