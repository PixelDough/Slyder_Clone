enum MM {
	PLAY,
	RESUME,
	OPTIONS,
	EXIT
}
main_menu = [];
main_menu[MM.PLAY] = ["PLAY TAPE", ("room_goto_fade"), level1_test];
main_menu[MM.RESUME] = ["RESUME TAPE", ("room_goto"), room];
main_menu[MM.OPTIONS] = ["OPTION", ("room_goto"), room];
main_menu[MM.EXIT] = ["POWER OFF", ("game_end")];

sel = MM.PLAY;