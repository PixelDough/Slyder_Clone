//draw_set_alpha(fade);
//draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
//draw_sprite_ext(spr_fade_black, 0, 0, 0, 1, 1, 0, c_white, fade);
//draw_set_alpha(1);

//global.noise_magnetude += 0.1;
image_alpha += 0.1
//if global.noise_magnetude >= 1.5 {
if image_alpha >= 1.5 {
	instance_destroy();
	room_goto(target);
}