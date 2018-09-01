enum MENU_TYPE {
	ROOM_CHANGE,
	MENU_CHANGE,
	OPTION_CHANGE_BAR,
}

enum MM {
	PLAY,
	RESUME,
	OPTIONS,
	EXIT
}
enum OP {
	FULLSCREEN,
	WARP,
	BACK,
}
main_menu = [];
options = [];

options[OP.FULLSCREEN] = ["FULLSCREEN", MENU_TYPE.ROOM_CHANGE, room];
options[OP.WARP] = ["DISTORTION", MENU_TYPE.OPTION_CHANGE_BAR, "tube_distortion", 0.1, 1];

main_menu[MM.PLAY] = ["PLAY TAPE", MENU_TYPE.ROOM_CHANGE, level1_test];
main_menu[MM.RESUME] = ["RESUME TAPE", MENU_TYPE.ROOM_CHANGE, room];
main_menu[MM.EXIT] = ["POWER OFF", MENU_TYPE.ROOM_CHANGE, room];

//options[OP.BACK] = ["BACK", MENU_TYPE.MENU_CHANGE, main_menu];
main_menu[MM.OPTIONS] = ["OPTION", MENU_TYPE.MENU_CHANGE, options];

menu = main_menu;

sel = MM.PLAY;

audio_stop_all();