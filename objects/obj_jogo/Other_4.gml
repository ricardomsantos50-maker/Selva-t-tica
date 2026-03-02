randomise();
if(room == rm_captura)
{
	linhas_quantidade = 4;
	espacamento = 32
	scale = 0.5

	for(var a = 0; a < linhas_quantidade; a++)
	{
		for(var b = 0; b < linhas_quantidade; b++)
		{
			var inst = instance_create_layer(96 + (espacamento*a),32+ (espacamento*b),"Instances",obj_captura)
			inst.image_xscale = scale
			inst.image_yscale = scale
			inst.bixo = irandom_range(0,1);
			global.celulas_captura[a][b] = inst.bixo

		}
	}
	show_debug_message(global.celulas_captura)
}