function draw_collisionmask(sprite){
	mask_index = s_player;
	draw_set_colour(c_red);
	draw_set_alpha(0.5);
	draw_rectangle(self.bbox_left, self.bbox_top, self.bbox_right, self.bbox_bottom, false);
	draw_set_alpha(1);
}