function set_sprite(curr_state, curr_facing){
	
	if curr_facing == -1 {
		curr_facing = 0;
	} else if curr_facing == 1 {
		curr_facing = 1;
	}
	
	if curr_facing = 0 {
		image_xscale = -1;
	} else {
		image_xscale = 1;
	}
	sprite_index = sprite_from_state[curr_state][curr_facing];
	
}