//Variavel para maquina
estado = "parado";

//Variaveis para movimento
vel  = 2;
velh = 0;
velv = 0;

direita  = 0;
esquerda = 0;
cima     = 0;
baixo    = 0;
dir      = 0;

//Função que define os controlhes e mexe com as velocidades de movimento
controles = function()
{
	direita  = keyboard_check(vk_right);
	esquerda = keyboard_check(vk_left);
	cima     = keyboard_check(vk_up);
	baixo    = keyboard_check(vk_down);
	
	_dir = point_direction(0, 0, direita - esquerda, baixo - cima);
	
	if(direita xor esquerda or cima xor baixo)
	{
		velh = lengthdir_x(vel,_dir);
		velv = lengthdir_y(vel,_dir);
	}else
	{
		velh = 0;
		velv = 0;
	}
}

maquina_estados = function()
{
	switch(estado)
	{
		case "parado":
			controles();
			mudar_sprite();

		if(direita xor esquerda or cima xor baixo)
		{
			estado = "movendo"
		}
		switch(dir)
		{
			case 0: 
				sprite_index = spr_player_stop_right;
			break;
				
			case 90: 
				sprite_index = spr_player_stop_up;
			break;
				
			case 180: 
				sprite_index = spr_player_stop_left;
			break;
			
			case 270: 
				sprite_index = spr_player_stop_down;
			break;
		
		}
		
		case "movendo": 
		{
			controles()
			mudar_sprite()
			
			if(velh == 0 && velv == 0)
			{
				estado = "parado"
			}
			break;
		}
	}
}

mudar_sprite = function()
{
	if(direita xor esquerda or cima xor baixo)
	{
		dir = point_direction(0,0, direita - esquerda, baixo - cima);
	}
	if(estado == "movendo")
	{
		switch(dir)
		{
			case 0: 
				sprite_index = spr_player_walking_right;
			break;
				
			case 90: 
				sprite_index = spr_player_walking_up;
			break;
				
			case 180: 
				sprite_index = spr_player_walking_left;
			break;
			
			case 270: 
				sprite_index = spr_player_walking_down;
			break;
		
		}
	}
}