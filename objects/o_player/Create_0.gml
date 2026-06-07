#macro SPEED	4


event_inherited();

left_input				= 0;
right_input				= 0;
x_input					= 0;
y_input					= 0;
vel_x					= 0;
vel_y					= 0;

move_speed				= SPEED;

key_attack_pressed		= false;		// 'F'
key_jump				= false;		// 'Space'
key_jump_held			= false;		// 'Space'
interact_button			= false;		// 'E'
key_full_screen			= false;		// 'O'

fullscreen				= false;


direction_facing = facing.right; 
prev_direction = direction_facing;
direction_value = 1; // -1 if turned to left, +1 if facing right, updated in the step event

enum state_ 
{
	idle,
	run,
	jump,
	fall,
	dash,
	death = 15
}

enum facing 
{
	left = -1,
	right = 1
}