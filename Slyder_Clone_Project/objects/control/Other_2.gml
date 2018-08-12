enum MODES {
	PLAY,
	EDIT
}

global.mode = MODES.EDIT

randomize()

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

var _music = audio_play_sound(song, 100, true);
audio_sound_set_track_position(_music, random_range(15, 45))

global.time = 1;
//!"^~`#$%&'()*+,-./0123456789:;<=>?@abcdefghijklmnopqrstuvwxyz[_]" 
//"!\"#$%&'()*+,-./0123456789:;<=>?@abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ[_]\" "
global.font = font_add_sprite_ext(spr_font, "!\"#$%&'()*+,-./0123456789:;<=>?@abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ[_]\" ", false, 0);
draw_set_font(global.font)
//draw_set_valign(fa_middle)