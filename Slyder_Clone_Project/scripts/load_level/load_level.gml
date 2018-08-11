
var _filename = get_string("What is the name of the level you wish to load?", "My Level");

ini_open(_filename);

var _list = ds_list_create();
var _list_string = ini_read_string("Level", "Data", "");
ds_list_read(_list, _list_string);

if !ds_list_empty(_list) {
	
	with all {
		if object_is_ancestor(object_index, level_element) instance_destroy()
	}
	
	for (var _i=0; _i < ds_list_size(_list); _i++) {
	
		var _object = _list[| _i];
		instance_create_layer(_object[0], _object[1], _object[2], _object[3]);
	
	}
}

ds_list_destroy(_list);

ini_close();