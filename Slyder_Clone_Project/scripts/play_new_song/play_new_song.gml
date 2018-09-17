
audio_stop_all();

you_know_where_to_find_me = [
	mus_IsThisFruitEdible, 
	mus_ReturnToTheBasis, 
	mus_GranularDreams, 
	mus_StillWeakerThanThem, 
	mus_FallingIntoTheGame, 
	mus_AndNeverComeBack, 
	mus_PowerfulStasis, 
	mus_MurkySweetSweetStyle, 
	mus_HorizonEnding
];

album = you_know_where_to_find_me;

song = album[random(array_length_1d(album))]

//var _music = audio_play_sound(song, 100, true);
//audio_sound_set_track_position(_music, random_range(15, 45))