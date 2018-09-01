draw_set_halign(fa_center)
draw_text_transformed(room_width/2, room_height/4, "MENU", 1, 2, 0);
draw_set_color(c_white);

var _y = room_height/2
//draw_text_transformed(room_width/4, _y, "PLAY TAPE\nRESUME TAPE\nOPTION\nPOWER OFF", 1, 2, 0);

draw_set_halign(fa_left)

for (var _i=0; _i<array_length_1d(menu); _i++) {
	var _item = menu[_i];
	if _i == sel {
		draw_set_halign(fa_right)
		draw_text(room_width/4, _y+(_i * 9), "*");
		draw_set_halign(fa_left)
		draw_text_transformed(room_width/4, _y+(_i * 9), _item[0], 1, 1, 0);
		
		if obj_input.select_pressed {
			if _item[1] == MENU_TYPE.ROOM_CHANGE {
				room_goto_fade(_item[2]);
			}
			if _item[1] == MENU_TYPE.MENU_CHANGE {
				change_menu(_item[2]);
				sel = 0;
				break;
			}
			//audio_play_sound(snd_alert01, 100, false);
		}
		if obj_input.left_pressed or obj_input.right_pressed {
			if _item[1] == MENU_TYPE.OPTION_CHANGE_BAR {
				var _option_change = _item[3] * (obj_input.right_pressed - obj_input.left_pressed)
				variable_global_set(_item[2], clamp(0, variable_global_get(_item[2]) + _option_change, _item[4]));
			}
		}
		
	} else {
		draw_text_transformed(room_width/4, _y+(_i * 9), _item[0], 1, 1, 0);
	}
}

sel += obj_input.down_pressed - obj_input.up_pressed;
sel = clamp(sel, 0, array_length_1d(menu) - 1)

draw_set_halign(fa_left)