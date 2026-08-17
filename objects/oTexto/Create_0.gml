/* Borda preta
draw_set_color(c_black);

draw_text(x - 2, y, text);
draw_text(x + 2, y, text);
draw_text(x, y - 2, text);
draw_text(x, y + 2, text);
	global.musica-=0.1;
    audio_sound_gain(
        volume,
        global.musica,
        0
    );
*/

opcao = 0;

font_enable_effects(Fontex_1, true);