enum MODES {
	PLAY,
	EDIT
}

global.mode = MODES.EDIT

randomize()
audio_play_sound(choose(snd_Overcast), 100, true);