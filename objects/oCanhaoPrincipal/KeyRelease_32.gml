if (global.menu_aberto)
{
    exit;
}
//Definir dereçao da bola
global.xDirecao=1;
global.yDirecao=0;

//disparao com tempo de ativaçao
if(tiro>0 && cooldown=0){
image_index = 0;
image_speed = 30;
global.bDirecao=0;
instance_create_layer(x+25,y,"salaPrincipal",oBola);

tiro--;
cooldown=60;
alarm[0]=cooldown;
}