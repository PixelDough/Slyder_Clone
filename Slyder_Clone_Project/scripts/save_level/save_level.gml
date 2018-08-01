var _walls = ds_map_create();
with all {
	if object_index == obj_wall or object_get_parent(self) == obj_wall {
		//ds_map_add(_walls, "Wall")
	}
}
for(var _i=0; _i<instance_number(obj_wall); _i++) {
	//ds_grid_add(_walls, _i, 1, id);
}