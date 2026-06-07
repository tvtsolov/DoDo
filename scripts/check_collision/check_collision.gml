///@description checks both object and tile collisions in the arrays for collision objects


function check_collision(_move_x, _move_y, col_obj)
{
	// object collision
	if (place_meeting(x + _move_x, y + _move_y, col_obj))
	{
		return true;
	}
	
	// tile collision (faster)
	var col = check_tile_collision(COL_TM, _move_x, _move_y);

	if col {
		var test = 4;	
	}
	
	return col;
	 
}

