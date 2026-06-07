/// @description Idle

set_sprite(current_state, direction_facing);


//check to new state
if not grounded {
	current_state = state.fall;
} else if x_input != 0 and grounded {
	current_state = state.run;
}


image_speed = 0;