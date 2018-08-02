/// @description PLAY MODE

if keyboard_check_pressed(ord("E")) global.mode = MODES.EDIT;

if instance_exists(level_editor) instance_destroy(level_editor);