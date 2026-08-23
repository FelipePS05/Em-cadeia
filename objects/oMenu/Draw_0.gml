if (!global.menu_aberto)
{
    exit;
}

var aux = -60;
var xx = room_width * 0.5;
var yy = room_height * 0.5;

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(Fontex);


// Escolhe qual menu desenhar
var menu;

if (menu_atual == 0)
{
    menu = opcoes;
}
else
{
    menu = opcoes_config;
}

t = array_length(menu);


for (var i = 0; i < t; i++)
{
    // Cor da opção selecionada
    if (opcao_selecionada == i)
    {
        draw_set_colour(c_yellow);
    }
    else
    {
        draw_set_colour(c_white);
    }


    // Texto normal
    var texto = menu[i];


    // Menu de configurações
    if (menu_atual == 1)
    {
        // Volume
        if (i == 0)
        {
            texto = "Volume: " + "[ " + string(global.volume*100) + "% ]";
        }

        // Tela cheia
        if (i == 1)
        {
		texto="Tela cheia:"+"[ " + string(global.full ? "ON" : "OFF") + " ]"
        }
    }


    // Desenha o texto
    draw_text(
        xx,
        yy + aux,
        texto
    );

    aux += 40;
}