


if time == 30 {
	audio_play_sound(snd_tape_in, 100, false);
}

if time >= 180 and time < 300 {
	if time == 180 audio_play_sound(snd_TV_buzz, 100, false);
	draw_rectangle_color(0, 0, room_width, room_height, c_blue, c_blue, c_blue, c_blue, false);
}

if time > 210 and time < 360 {
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_text_transformed(20, 20, "PLAY        --:--", 2, 2, 0);
		
	draw_set_valign(fa_bottom);
	draw_text_transformed(20, room_height-20, "SLP   0:00:00", 2, 2, 0);
}

if time >= 420 {
	if time == 420 audio_play_sound(snd_VHS_opening, 100, false);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(global.font);
	var _fade = (global.time - 420)/90;
	
	draw_text_transformed_color(room_width/2, room_height/2, "PixelDough\nPresents", 2, 2, sin(global.time / 10)*4, c_teal, c_orange, c_orange, c_teal, _fade);
	
}