//desenhando a opcpes pra editar
var largura = display_get_gui_width();

var x_titulo = 0.5 * largura;
var x_nome   = 0.3 * largura;
var x_valor  = 0.7 * largura;

draw_set_font(Fontex);
draw_set_valign(fa_middle);

draw_set_halign(fa_center);
draw_set_color(c_white);

draw_text(
    x_titulo,
    100,
    "Configurações"
);

draw_set_halign(fa_right);

draw_text(x_nome, 200, "Volume");
draw_text(x_nome, 250, "Tela Cheia");

draw_set_halign(fa_left);

if (opcao == 0)
{
    draw_set_color(c_yellow);
}
else
{
    draw_set_color(c_white);
}

draw_text(
    x_valor,
    200,
    "[ " + string(global.volume*100) + "% ]"
);


// Tela cheia
if (opcao == 1)
{
    draw_set_color(c_yellow);
}
else
{
    draw_set_color(c_white);
}

draw_text(
    x_valor,
    250,
    "[ " + string(global.full ? "ON" : "OFF") + " ]"
);

draw_set_halign(fa_center);
draw_set_color(c_white);
if (opcao == 2)
{
    draw_set_color(c_yellow);
}
else
{
    draw_set_color(c_white);
}


draw_text(
    x_titulo,
    400,
    "Tela inicial"
);


// Reset

draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);