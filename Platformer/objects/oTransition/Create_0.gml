w = display_get_gui_width();
h = display_get_gui_height();
h_half = h / 2;

enum TRANS_MODE {
	OFF,
	INTRO,
	GOTO,
	NEXT,
	RESTART
};

mode = TRANS_MODE.INTRO;
percent = 1;
target_room = room;
spd = 0.1;
























