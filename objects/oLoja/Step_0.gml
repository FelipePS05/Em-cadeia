var xx = x + 50;
var yy = y + 50;
var dist=0;
// Clique
if (mouse_check_button_pressed(mb_left))
{
    var selecionou = false;

    // Verifica se clicou em uma torre da loja
    for (var i = 0; i < array_length(nomes); i++)
    {
		
        if (point_in_rectangle(
            mouse_x,
            mouse_y,
            xx - 40,
            yy - 40,
            xx + 40,
            yy + 40
        ))
        {
            // Só pode selecionar se tiver quantidade
            if (Qnt[i] > 0)
            {
                global.cursorFrame = 1;
                global.torreSelecionada = i;
                selecionou = true;
            }

            break;
        }

        // Mesma distância usada no Draw
		dist=distancia[i]
        yy +=dist ;
    }

    // Colocar no mapa
    if (!selecionou && global.torreSelecionada != -1)
    {
        var torre = instance_create_layer(
            mouse_x,
            mouse_y,
            "salaPrincipal",
            objetos[global.torreSelecionada]
        );

        Qnt[global.torreSelecionada]--;

        global.torreSelecionada = -1;
        global.cursorFrame = 0;
    }
}