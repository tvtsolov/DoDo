function take_input(){

		
	// keyboard_check_pressed()	pressed only once
	// keyboard_check()				held down or not
		

		x_input	= keyboard_check(vk_right) - keyboard_check(vk_left); // -1 or 1
		
		if keyboard_check_pressed(vk_space){
			key_jump		= true;
		}
		else {
			key_jump = false;
		}
	
		key_left_held				= keyboard_check_pressed(vk_left);
		key_right_held				= keyboard_check_pressed(vk_right);
		interact_button				= keyboard_check_pressed(ord("E"));


		if x_input = -1 {
			left_input = true;
			right_input = false;
		} else if x_input = 1 {
			left_input = false;
			right_input = true;			
		} else {
			left_input = false;
			right_input = false;				
		}
		
}