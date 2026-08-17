// Configuração do texto
draw_self();

draw_set_font(Fontex);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Borda preta
draw_set_color(c_black);

draw_text(x - 2, y, text);
draw_text(x + 2, y, text);
draw_text(x, y - 2, text);
draw_text(x, y + 2, text);

// Texto principal
draw_set_color(c_white);
draw_text(x, y, text);

// Reset
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);