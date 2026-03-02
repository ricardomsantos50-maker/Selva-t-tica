esc_x_original = image_xscale;
esc_y_original = image_yscale;
xscale = esc_x_original;
yscale = esc_y_original;

acao_botao = function()
{
	switch(acao)
	{
		case "jogar":
		//TODO fazer ele ir menu
		room_goto(rm_jogar)
			break;
			
		case "opcao":
		//TODO fazer ele ir menu
		layer_set_visible("ui_menu",0)
		layer_set_visible("ui_opcao",1)
			break;
			
		case "voltar":
		//TODO fazer ele ir menu
		layer_set_visible("ui_menu",1)
		layer_set_visible("ui_opcao",0)
			break;
			
		case "sair": layer_set_visible("ui_menu",0)room_goto(rm_menu) break;
	}
}
