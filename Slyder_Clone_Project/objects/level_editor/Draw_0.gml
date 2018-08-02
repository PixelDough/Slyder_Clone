
draw_sprite_ext(items[current_item, 0], 0, round_n(mouse_x, 16), round_n(mouse_y, 16), 1, 1, 0, c_gray, 0.75)

draw_text(mouse_x + 10, mouse_y - 10, object_get_name(items[current_item, 1]))