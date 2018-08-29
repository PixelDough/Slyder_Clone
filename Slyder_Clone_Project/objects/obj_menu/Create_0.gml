enum MM {
	PLAY,
	RESUME,
	OPTIONS,
	EXIT
}
enum OP {
	FULLSCREEN,
}
main_menu = [];
main_menu[MM.PLAY] = ["PLAY TAPE", room_goto_fade, level1_test];
main_menu[MM.RESUME] = ["RESUME TAPE", room_goto_fade, room];
main_menu[MM.OPTIONS] = ["OPTION", room_goto_fade, room];
main_menu[MM.EXIT] = ["POWER OFF", end_game, true];

options = [];
options[OP.FULLSCREEN] = ["FULLSCREEN", room_goto_fade, room];

menu = main_menu;

sel = MM.PLAY;

audio_stop_all();