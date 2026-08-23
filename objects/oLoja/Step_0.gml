if(global.menu_aberto){
	exit;
}

// Tamanho da loja
var altura_loja = sprite_height;
var largura_loja = sprite_width;

// Cada espaço ocupa 1/4 da altura
var altura_item = altura_loja / 4;

// Primeiro item da página
var inicio = pagina * itens_por_pagina;


// Verifica as 4 torres
for (var i = 0; i < 4; i++)
{
    var indice = inicio + i;

    // Se não existe essa torre
    if (indice >= array_length(sprites))
    {
        break;
    }

    // Centro de cada espaço
    var xx = x + largura_loja / 2;
    var yy = y + (altura_item * i) + (altura_item / 2);


    // Verifica se o mouse está sobre a torre
    if (point_in_rectangle(
        mouse_x,
        mouse_y,
        xx - 40,
        yy - 40,
        xx + 40,
        yy + 40
    ))
    {
        // Clicou na torre
	    if (mouse_check_button_pressed(mb_left))
	    {
	        // Só pode selecionar se tiver quantidade
	        if (Qnt[indice] > 0)
	        {
	            global.torreSelecionada = indice;
	            global.podeColocar = false;
	        }
	    }
    }
}


// Depois que soltou o botão,
// permite colocar a torre
if (global.torreSelecionada != -1)
{
    if (mouse_check_button_released(mb_left))
    {
        global.podeColocar = true;
    }
}


// Segundo clique: coloca a torre
if (global.torreSelecionada != -1 && global.podeColocar)
{
    if (mouse_check_button_pressed(mb_left))
    {
        instance_create_layer(
            mouse_x,
            mouse_y,
            "salaPrincipal",
            objetos[global.torreSelecionada]
        );
		//-1 na qiantidade
        Qnt[global.torreSelecionada]--;
        // Limpa a seleção
        global.torreSelecionada = -1;
        global.podeColocar = false;

    }
}