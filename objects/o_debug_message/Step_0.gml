if instance_exists(o_player){

	#region // strings


	var image_scale_ = "";

	if o_player.image_xscale == 1
		image_scale_ = "right";
	else if o_player.image_xscale == -1
		image_scale_ = "left";
		
	#endregion

	with (o_player)
	{
		
		global.debug_message = 
		
		"\nPlayer y: " + string(o_player.y) +
		"\nPlayer x: " + string(o_player.x) +
		"\nInput on x: " + string(o_player.x_input) +
		"\n-----------------------------------------------"
	}
	
}



























