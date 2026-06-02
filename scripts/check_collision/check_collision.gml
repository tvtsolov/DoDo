///@description checks both object and tile collisions in the arrays for collision objects


function check_collision(_move_x, _move_y, col_obj = noone)
{
	// object collision
	var mvm_x = x + _move_x;
	var mvm_y = y + _move_y;
	if (place_meeting(mvm_x, mvm_y, col_obj))
	{
		return true;
	}
	// tile collision (faster)
	var col = check_tile_collision("ts_COLLISION_mask",_move_x, _move_y);

	return col;
	
}

