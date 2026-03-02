for(var a = 0; a< 4; a++)
{
	for(var b = 0; b< 4; b++)
	{
		if(vida == 1 and  global.vidas_bixo[b][a] == 1)
		{
			image_blend = make_colour_rgb(0,255,255)
			global.vidas_bixo[b][a] = 0;
			show_debug_message(global.vidas_bixo)
			return;
		}else
		{
			image_blend = c_white
		}
	}
}

