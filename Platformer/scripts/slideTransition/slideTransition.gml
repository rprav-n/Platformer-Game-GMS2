/// @description This is a custom slide transition
/// @function slideTransition(mode, target_room);
/// @param mode sets transition mode between NEXT,RESTART and GOTO
/// @param target_room sets target room when using the goto mode

function slideTransition(_mode, _traget_room=room) {
	with (oTransition) {
		mode = _mode;
		target_room = _traget_room;
	}
}