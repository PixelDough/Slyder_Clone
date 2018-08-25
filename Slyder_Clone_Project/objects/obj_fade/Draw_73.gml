//draw_set_alpha(fade);
//draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
//draw_sprite_ext(spr_fade_black, 0, 0, 0, 1, 1, 0, c_white, fade);
//draw_set_alpha(1);

//global.noise_magnetude -= 0.1;


draw_sprite_ext(sprite_index, image_index, 0, 0, room_width, room_height, 0, c_black, alpha);

if fade_in {
	alpha += 0.1;
} else {
	alpha -= 0.1;
}

//if global.noise_magnetude <= 0.1 {
if alpha >= 1 {
	fade_in = false;
	room_goto(target);
}
if alpha < 0 {
	instance_destroy();
}