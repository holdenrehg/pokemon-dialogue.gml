enum DIRECTION { left, right, up, down }

function idle()
{
	image_speed = 0;
	if(facing == DIRECTION.left)       image_index = 7;
	else if(facing == DIRECTION.right) image_index = 10;
	else if(facing == DIRECTION.up)    image_index = 4;
	else if(facing == DIRECTION.down)  image_index = 1;
}

function step_left()
{
	if(is_chatting) return;
	
	facing = DIRECTION.left;
	x -= 2
	image_speed = 1;
	if(image_index > 8 or image_index < 6) image_index = 6;
}

function step_right()
{
	if(is_chatting) return;
	
	facing = DIRECTION.right;
	x += 2
	image_speed = 1;
	if(image_index > 11 or image_index < 9) image_index = 9;
}

function step_up()
{
	if(is_chatting) return;
	
	facing = DIRECTION.up;
	y -= 2;
	image_speed = 1;
	if(image_index > 5 or image_index < 3) image_index = 3;
}

function step_down()
{
	if(is_chatting) return;
	
	facing = DIRECTION.down;
	y += 2;
	image_speed = 1;
	if(image_index > 2) image_index = 0;
}

function chat_with(npc)
{
	if(is_chatting) return;
	
	is_chatting = true;
	chatting_with = npc;
	y = npc.y;
	x = npc.x + npc.sprite_width + 4;
	facing = DIRECTION.left;
	current_chat_msg = npc.get_chat();
}

function stop_chat()
{
	is_chatting = false;
	chatting_with = noone;
	current_chat_msg = false;
}

// ----------------------------------------------------------------------------

facing = DIRECTION.down;
is_chatting = false;
chatting_with = noone;
current_chat_msg = false;

idle();