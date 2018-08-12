enum MODES {
	PLAY,
	EDIT
}

global.mode = MODES.EDIT

randomize()
var _music = audio_play_sound(mus_SpacialHarvest, 100, true);
audio_sound_set_track_position(_music, random_range(30, 180))

global.time = 1;
//!"^~`#$%&'()*+,-./0123456789:;<=>?@abcdefghijklmnopqrstuvwxyz[_]" 
//"!\"#$%&'()*+,-./0123456789:;<=>?@abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ[_]\" "
global.font = font_add_sprite_ext(spr_font, "!\"#$%&'()*+,-./0123456789:;<=>?@abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ[_]\" ", false, 0);
draw_set_font(global.font)
//draw_set_valign(fa_middle)