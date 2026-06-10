function check_tile_collision(col_mask, _move_x, _move_y){
	
	//check_tile_collision("ts_COL_TSLISION_mask",_move_x, _move_y)
	
	var lay_id = layer_get_id(col_mask[1]);
	var map_id = layer_tilemap_get_id(lay_id);
	
	
	var _left_top		= tilemap_get_at_pixel(map_id, bbox_left+_move_x, bbox_top+_move_y);

	var _right_top		= tilemap_get_at_pixel(map_id, bbox_right+_move_x -1, bbox_top+_move_y);
	
	var _middle_x		= round((bbox_left+_move_x) + (((bbox_right+_move_x -1) - (bbox_left+_move_x)) / 2 ));
	var _middle_y		= round((bbox_bottom+_move_y -1)-(bbox_top+_move_y)/2 + bbox_top+_move_y);
	
	var _middle_bottom	= tilemap_get_at_pixel(map_id, _middle_x, bbox_bottom+_move_y -1);
	var _middle_top		= tilemap_get_at_pixel(map_id, _middle_x, bbox_top + _move_y);

	var _right_bottom	= tilemap_get_at_pixel(map_id, bbox_right + _move_x -1, bbox_bottom+_move_y -1);

	var _left_bottom	= tilemap_get_at_pixel(map_id, bbox_left+_move_x, bbox_bottom+_move_y -1);

	
	if (_left_top or _right_top or _right_bottom or _left_bottom or _middle_top or _middle_bottom)
	{	
		return true;
	}
	
	return false;
}