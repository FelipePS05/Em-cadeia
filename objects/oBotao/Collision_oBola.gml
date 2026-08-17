instance_destroy(other)
if (room_next(room) != -1)
{
    room_goto_next();
	
}
else
{
    room_goto(Inicio);
}
global.salas[global.salaatual+1] = status_bloqueado.desbloqueado;