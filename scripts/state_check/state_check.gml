function state_check(){

switch (current_state)
{
#region STATE IDLE
		case state.idle:					// IDLE STATE -----------------------------------		
		{
			if not grounded {
				goto_state(state.fall);
			} else if x_input != 0 and grounded {
				goto_state(state.run);
			} else if key_jump {
				vel_y = -jump_speed;
				goto_state(state.jump);
			}
		}
		break;
#endregion		
#region STATE RUN
		case state.run:						// RUN ------------------------------------------
		{
			if x_input == 0 {
				goto_state(state.idle);
			} 
			if (key_jump) {
				vel_y = -jump_speed;
				goto_state(state.jump);
			}
		}		
		break;
#endregion	
#region STATE JUMP STATE
		case state.jump:					// JUMP -----------------------------------------
		{
			if grounded {
				goto_state(state.idle);	
			}
		}	
		break;
#endregion			
#region STATE FALL STATE
		case state.fall:					// FALL -----------------------------------------
		{
			if grounded {
				goto_state(state.idle);
			}
			if x_input != 0 and grounded {
				goto_state(state.run);
			}
		}	
		break;
#endregion	
	}
}


