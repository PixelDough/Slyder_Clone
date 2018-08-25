///@argument room

var _room = argument0;

var _fade = instance_create_layer(0, 0, "META", obj_fade);
_fade.target = _room;
//room_goto(_room);