if(keyboard_check_pressed(vk_escape)){
	global.menu_aberto=!global.menu_aberto;
	layer_set_visible("Pause", global.menu_aberto);
}

if (keyboard_check_pressed(vk_enter))
{
    // MENU PRINCIPAL
    if (menu_atual == 0)
    {
        switch (opcao_selecionada)
        {
            case 0:
                // Retomar
                global.menu_aberto = false;
				layer_set_visible("Pause", global.menu_aberto);
            break;

            case 1:
                // Opções
                menu_atual = 1;
                opcao_selecionada = 0;
            break;

            case 2:
                room_goto(Inicio);
            break;

            case 3:
                game_end();
            break;
        }
    }


    // MENU DE OPÇÕES
    else if (menu_atual == 1)
    {
        switch (opcao_selecionada)
        {
            case 0:
                // Volume
            break;

            case 1:
                // Tela cheia
            break;

            case 2:
                // Voltar para menu principal
                menu_atual = 0;
                opcao_selecionada = 0;
            break;
        }
    }
}

if(menu_atual==0){
	exit;
}

// Diminuir

if (keyboard_check_pressed(vk_left))
{
    switch (opcao_selecionada)
    {
        // Volume
        case 0:
            global.volume -= 0.1;

            if (global.volume < 0)
            {
                global.volume = 0;
            }
        break;


        //telacheia
        case 1:
           global.full = !global.full ;
        break;

    }
}


// Aumentar
if (keyboard_check_pressed(vk_right))
{
    switch (opcao_selecionada)
    {
        // Volume
        case 0:
            global.volume += 0.1;

            if (global.volume > 1)
            {
                global.volume = 1;
            }
        break;

        // Tela cheia
        case 1:
            global.full = !global.full;
        break;
    }
}