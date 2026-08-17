draw_self();
draw_set_font(Fontex)
var xx = x + 50;
var yy = y + 50;
var dist=0;
// Desenha as torres da loja
for (var i = 0; i < array_length(nomes); i++)
{
    // Cor normal
    var cor = c_white;

    // Se acabou, fica cinza
    if (Qnt[i] <= 0)
    {
        cor = c_gray;
    }

    // Sprite da torre
    draw_sprite_ext(
        sprites[i],
        0,
        xx,
        yy,
        1,
        1,
        0,
        cor,
        1
    );

    // Nome
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);

    draw_text(
        xx,
        yy + 10,
        nomes[i]
    );

    // Quantidade
    draw_text(
        xx,
        yy + 25,
        "Qnt: " + string(Qnt[i])
    );

    // Próximo item
	dist=distancia[i]
    yy += dist;
}

// Volta configurações
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// Torre selecionada seguindo o mouse
if (global.torreSelecionada != -1)
{
    draw_sprite(
        sprites[global.torreSelecionada],
        0,
        mouse_x,
        mouse_y
    );
}