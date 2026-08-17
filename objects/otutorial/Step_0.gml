if (opacidade)
{

    image_alpha -= 1 / room_speed;

    if (image_alpha <= 0)
    {
        image_alpha = 0;
        instance_destroy();
    }
}