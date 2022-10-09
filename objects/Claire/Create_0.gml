function get_chat()
{
	if(array_length(dialogue) > 1)
	{
		return array_pop(dialogue);
	}
	
	return dialogue[0];
}

function load_dialogue()
{
	var buffer = buffer_load("notes.json");
	var contents = json_parse(buffer_read(buffer, buffer_text));
	buffer_delete(buffer);
	return contents.claire;
}

// ----------------------------------------------------------------------------

image_speed = 0;
image_index = 1;
name = "Claire";
dialogue = load_dialogue();
