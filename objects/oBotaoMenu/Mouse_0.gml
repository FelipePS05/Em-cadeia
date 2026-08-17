//funcionamento do botao
switch (acao)
{
    case 1:
        room_goto(menuSala);
    break;

    case 2:
        room_goto(Opcoes);
    break;

    case 3:
        room_goto(Creditos);
    break;
    case 4:
        game_end();
    break;
}