///@param _vel_x	how far to move on X
///@param _vel_y	how far to move on Y
///@param coll_objs	collision objects

function move_entity(_vel_x, _vel_y, coll_objs=noone){
// #movement

	var pr_x = x;
	var pr_y = y;
	
	if x_input = 1
	{
		vel_x = move_speed;
	}
	if x_input = -1 
	{
		vel_x = -move_speed;
	}
	
	var _move_count_x = abs(_vel_x);
	var _move_once_x = sign(_vel_x);
	
	repeat (_move_count_x)
	{
		// check tiles and objects (both types)
		var _collision_found = check_collision(_move_once_x, 0, coll_objs);
		
		if (!_collision_found)
		{
			self.x += _move_once_x;
		} else { 
			vel_x = 0;
			break;
		}
	}
	
	
	var _move_count_y = abs(_vel_y);
	
	
	if self.object_index == o_player 
	{
		_move_count_y++;
	} 
	
	var _move_once_y = sign(_vel_y);


	repeat (_move_count_y)
	{
		var _collision_found = check_collision(0, _move_once_y, coll_objs);

		if (!_collision_found)
		{
			self.y += _move_once_y;
		}
		else
		{
			vel_y = 0;
			break;
		}
	}
	
	
	if  pr_x != x or pr_y != y {
		moved_in_the_last_frame			= true;
		if pr_x != x {
			if pr_x > x {
				moving_left				= true;
				moving_right			= false;
			} else if pr_x < x {
				moving_right			= true;
				moving_left				= false;
			}
		}
	} 
	else {
		moved_in_the_last_frame		= false;
		moving_left					= false;
		moving_right				= false;
	}
	


	// collision with enemy body
	if self.object_index == o_player and grounded {
		var inst = instance_place(x,y-1,o_enemy);
		if inst != noone and inst.grounded {
			if x > inst.x			// player on the right of the object
			{
				if pr_x > x {		// and is moving left 
					x = pr_x;		// go back to where you were
				}
		
			} else if x < inst.x // if player is on the right of the object
			{
				if pr_x < x {		// and moving right 
					x = pr_x;		// go back to previous position
				}
			}	
		}
	}
		
}