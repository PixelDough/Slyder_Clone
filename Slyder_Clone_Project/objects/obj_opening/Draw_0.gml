
global.noise_enabled = false;

if time == 30 {
	audio_play_sound(snd_tape_in, 100, false);
}

if time >= 180 {
	global.noise_enabled = is_noise_enabled;
	if time < 300 {
		if time == 180 {
			audio_play_sound(snd_TV_buzz, 100, false);
			var _hum = audio_play_sound(snd_hum, 100, true);
			audio_sound_pitch(_hum, audio_sound_get_pitch(_hum) + random_range(-0.2, 0.2))
		}
		draw_rectangle_color(0, 0, room_width, room_height, c_blue, c_blue, c_blue, c_blue, false);
	}
}

if time > 210 and time < 360 {
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_text_transformed(20, 20, "PLAY        --:--", 2, 2, 0);
		
	draw_set_valign(fa_bottom);
	draw_text_transformed(20, room_height-20, "SLP   0:00:00", 2, 2, 0);
}

if time >= 420 and time < 660 {
	if time == 420 audio_play_sound(snd_VHS_opening, 100, false);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(global.font);
	if time < 600 {
		text_fade = clamp(text_fade + 0.05, 0, 1);
	} else {
		text_fade = clamp(text_fade - 0.05, 0, 1);
	}
	
	draw_text_transformed_color(room_width/2, room_height/2, "PixelDough\nPresents", 2, 2, sin(global.time / 10)*4, c_teal, c_orange, c_orange, c_teal, text_fade);
	
}

if time >= 660 and time < 900 {
	var _opening = noone;
	if time == 660 _opening = audio_play_sound(snd_VHS_opening, 100, false);
	if _opening != noone {
		audio_sound_pitch(_opening, audio_sound_get_pitch(_opening) + 0.8);
	}
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(global.font);
	if time < 840 {
		text_fade = clamp(text_fade + 0.05, 0, 1);
	} else {
		text_fade = clamp(text_fade - 0.05, 0, 1);
	}
	
	draw_text_transformed_color(room_width/2, room_height/2, "V H S", 3, 3, sin(global.time / 10)*4, c_teal, c_orange, c_orange, c_teal, text_fade);
	
}

if time == 900 {
	room_goto_fade(rm_menu);
	
}