// Escolhe o sprite de acordo com o status da sala
if (global.salas[texto-1] == status_bloqueado.desbloqueado)
{
    sprite_index = sLevel;
}
else
{
    sprite_index = sLevelbloc;
}

// Desenha o sprite
draw_self();

// Texto com o número da sala
draw_set_font(Fontex_1);
draw_set_colour(#333F58);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x, y, texto);

// Reset
draw_set_colour(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);