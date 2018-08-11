enum MODES {
	PLAY,
	EDIT
}

global.mode = MODES.EDIT

randomize()
//audio_play_sound(choose(snd_Overcast), 100, true);

global.time = 1;
//!"^~`#$%&'()*+,-./0123456789:;<=>?@abcdefghijklmnopqrstuvwxyz[_]" 
//"!\"#$%&'()*+,-./0123456789:;<=>?@abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ[_]\" "
global.font = font_add_sprite_ext(spr_font, "!\"#$%&'()*+,-./0123456789:;<=>?@abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ[_]\" ", false, 0);
draw_set_font(global.font)
draw_set_valign(fa_middle)