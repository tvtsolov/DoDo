#macro SPEED			2
#macro JUMP_FORCE		12

event_inherited();

left_input				= 0;
right_input				= 0;
x_input					= 0;
y_input					= 0;
vel_x					= 0;
vel_y					= 0;

move_speed				= SPEED;
jump_speed				= JUMP_FORCE;
gravity_force			= .3;

key_attack_pressed		= false;		// 'F'
key_jump				= false;		// 'Space'
key_jump_held			= false;		// 'Space'
interact_button			= false;		// 'E'
key_full_screen			= false;		// 'O'

fullscreen				= false;

current_state			= state.idle;
direction_facing		= facing.right; 
prev_direction			= direction_facing;
direction_value = 1; // -1 if turned to left, +1 if facing right, updated in the step event


enum state
{
	idle,
	run,
	fall,
	jump,
	dash,
	death = 15
}

enum facing 
{
	left = -1,
	right = 1
}


sprite_from_state[state.idle, facing.left+1] = s_player[0];
sprite_from_state[state.idle, facing.right+1] = s_player[0];

sprite_from_state[state.run, facing.left+1] = s_player[1];
sprite_from_state[state.run, facing.right+1] = s_player[1];

sprite_from_state[state.fall, facing.left+1] = s_player[0];
sprite_from_state[state.fall, facing.right+1] = s_player[0];

