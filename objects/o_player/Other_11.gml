/// @description Run

set_sprite(current_state, direction_facing);
move_entity(vel_x, vel_y, COL_OBJ);

//check to new state
if x_input == 0 {
	current_state = state.idle;
}
