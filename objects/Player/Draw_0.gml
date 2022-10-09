draw_self();

if(keyboard_check(vk_left))       step_left();
else if(keyboard_check(vk_right)) step_right();
else if(keyboard_check(vk_up))    step_up();
else if(keyboard_check(vk_down))  step_down();
else                              idle()

if(keyboard_check_released(vk_space))
{
	if(not is_chatting) chat_with(Claire);
	else                stop_chat();
}
