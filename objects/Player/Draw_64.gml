if(is_chatting)
{
	var view_width = 400;
	var view_height = 400;
	
	draw_set_color(c_black);
	draw_rectangle(20, view_height - 150, view_width - 20, view_height - 20, false);
	draw_set_color(c_white);
	draw_text(30, view_height - 140, chatting_with.name + ":");
	draw_text(30, view_height - 120, current_chat_msg);
}
