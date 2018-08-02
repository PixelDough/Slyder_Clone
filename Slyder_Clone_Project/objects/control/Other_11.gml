/// @description EDIT MODE

if keyboard_check_pressed(ord("P")) global.mode = MODES.PLAY;

if !instance_exists(level_editor) instance_create_layer(0, 0, "META", level_editor);