enum MODES {
	PLAY,
	EDIT
}

global.mode = MODES.EDIT

randomize()
//audio_play_sound(choose(snd_FunkGameLoop), 100, true);

save_data = ds_map_create();

file_name = "SaveData.sav";