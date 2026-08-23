
// Tamanho da loja
var altura_loja = sprite_height;
var largura_loja = sprite_width;
var cor=c_white;
// Cada espaço ocupa 1/4 da altura
var altura_item = altura_loja / 4;
var inicio = pagina* itens_por_pagina;
// Desenha 4 sprites
for (var i = 0; i < 4; i++)
{
    // Centro de cada espaço
    var xx = x + largura_loja / 2;
    var yy = y + (altura_item * i) + (altura_item / 2);

	var j =inicio+i;
    if (j >= array_length(nomes))
    {
        break;
    }
	//desativando a cor
	if(Qnt[j]<=0){
		cor=c_gray;
	}
	else{
		cor=c_white;
	}
    // Desenha a sprite
    draw_sprite_ext(
        sprites[j],
        0,
        xx,
        yy,
        1,
        1,
        0,
        cor,
        1
    );
	draw_set_font(Fontex_pequena)
	draw_set_color(c_black);
	draw_text(xx, yy + 24, nomes[j]);
	
	draw_set_color(c_black);
	draw_text(xx, yy + 44, ("Qnt:"+string(Qnt[j])));
	
	if (global.torreSelecionada != -1)
	{
	    draw_sprite_ext(
	        sprites[global.torreSelecionada],
	        0,
	        mouse_x,
	        mouse_y,
	        1,
	        1,
	        0,
	        c_white,
	        0.6
	    );
	}
}

