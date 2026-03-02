var primeiro_valor = 0
global.capturou = true

for(var a = 0; a < 4; a++)
{
	for(var b = 0; b < 4; b++)
	{
		if(global.vidas_bixo[b][a] != primeiro_valor)
		{
			global.capturou = false;
			show_debug_message(global.capturou)
			break;
		}
	}
	if(!global.capturou)break;
}

if(global.capturou)show_message("Todos iguais")