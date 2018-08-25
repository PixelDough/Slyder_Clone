enum MODES {
	PLAY,
	EDIT
}

global.mode = MODES.PLAY;

randomize()

draw_set_circle_precision(32);

gpu_set_alphatestenable(true);

global.time = 1;
//!"^~`#$%&'()*+,-./0123456789:;<=>?@abcdefghijklmnopqrstuvwxyz[_]" 
//"!\"#$%&'()*+,-./0123456789:;<=>?@abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ[_]\" "
global.font = font_add_sprite_ext(spr_font, "!\"#$%&'()*+,-./0123456789:;<=>?@abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ[_]\" ", false, 0);
draw_set_font(global.font)
//draw_set_valign(fa_middle)

music_loaded = false;
audio_group_load(audiogroup_music);