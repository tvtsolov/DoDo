/// @description Fall

set_sprite(current_state, direction_facing);
move_entity(vel_x, vel_y, COL_OBJ);

if x_input != 0 and grounded {
	current_state = state.run;
}