randomise()
if(room == rm_captura)
{
	
	
	global.vidas_bixo = 
	[
		[0,0,0,0],
		[0,0,0,0],
		[0,0,0,0],
		[0,0,0,0]
	]
	
	qtd_e_linhas = 4
	espacamento = 32
	for(var a = 0; a < qtd_e_linhas; a++)
	{
		for(var b = 0; b < qtd_e_linhas; b++)
		{
			var inst = instance_create_layer(96 + (a * espacamento), 32 + (b * espacamento), "Instances",obj_captura)
			inst.image_xscale = 0.5;
			inst.image_yscale = 0.5;
			inst.vida = irandom(1);
			
			if(inst.vida == 1)
			{
				inst.image_blend = make_colour_rgb(255,0,255)
			}else{
				inst.image_blend = c_white
			};
			
			global.vidas_bixo[b][a] = inst.vida
		}
	}
	show_debug_message(global.vidas_bixo)
}