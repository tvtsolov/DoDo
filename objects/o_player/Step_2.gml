event_inherited();

image_speed = 1;
	
// This checks if the X velocity is 0, meaning the player is not moving horizontally.
if (vel_x == 0)
{
	// In that case we change its sprite to the idle one.
	sprite_index = s_player;
	image_index = 0;
}

if (vel_x != 0)
{
	// In that case we change its sprite to the idle one.
	sprite_index = s_player;
	image_index = 1;
}
	
// This checks if the Y velocity of the player is greater than 1, meaning it is falling down.
// This would happen when the player walks off a ledge.
if (vel_y > 1)
{
	// In that case we change its sprite to the fall one, and reset the frame to 0.
	sprite_index = s_player;
	image_index = 0;
}
