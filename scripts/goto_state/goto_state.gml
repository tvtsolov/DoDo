function goto_state(state_){
	
	switch (state_)
	{
		case state.idle:
		{
			current_state = state.idle;
		}
		break;
		case state.run:
		{
			current_state = state.run;
		}
		break;
		case state.fall:
		{
			current_state = state.fall;
		}
		break;
		case state.jump:
		{
			current_state = state.jump;
		}
		break;
	}
}