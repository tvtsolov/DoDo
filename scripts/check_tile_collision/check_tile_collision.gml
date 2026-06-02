function check_tile_collision(layer_name, _move_x, _move_y){
	
	//check_tile_collision("ts_COLLISION_mask",_move_x, _move_y)
	
	if layer_exists(layer_name){
		var lay_id = layer_get_id(layer_name);
		var map_id = layer_tilemap_get_id(lay_id);
	
		var _left_top = tilemap_get_at_pixel(map_id, bbox_left + _move_x, bbox_top + _move_y);

		var _right_top = tilemap_get_at_pixel(map_id, bbox_right + _move_x -1, bbox_top + _move_y);

		var _right_bottom = tilemap_get_at_pixel(map_id, bbox_right + _move_x -1, bbox_bottom + _move_y -1);

		var _left_bottom = tilemap_get_at_pixel(map_id, bbox_left + _move_x, bbox_bottom + _move_y -1);

	
		if (_left_top or _right_top or _right_bottom or _left_bottom)
		{
			
			//if self == o_player and (_right_top or _left_top)  { //todo remove after finish debugging
			//	var gfwege = 3;
			//}
			
			return true;
			
		}
	}
	return false;
}