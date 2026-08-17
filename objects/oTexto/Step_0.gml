// selecionando

if (keyboard_check_pressed(vk_down))
{
    opcao++;

    if (opcao > 2)
    {
        opcao = 0;
    }
}

if (keyboard_check_pressed(vk_up))
{
    opcao--;

    if (opcao < 0)
    {
        opcao =2;
    }
}

// Diminuir

if (keyboard_check_pressed(vk_left))
{
    switch (opcao)
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
    switch (opcao)
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
if (keyboard_check_pressed(vk_enter))
{
	if(opcao==2){
		room_goto(Inicio);
	}
}