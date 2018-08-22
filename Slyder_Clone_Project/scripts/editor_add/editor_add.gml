///@argument sprite
///@argument object
///@argument layer_name
///@argument string

var _sprite = argument0;
var _object = argument1;
var _layer_name = argument2;
var _string = argument3;

var _array_length = array_height_2d(items);

var _index = _array_length

items[_index, 0] = _sprite;
items[_index, 1] = _object;
items[_index, 2] = string(_layer_name);
items[_index, 3] = string(_string);