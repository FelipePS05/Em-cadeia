with (oBola)
{
    var dist = point_distance(x, y, other.x, other.y);

    if (dist < 50)
    {
        var ang = point_direction(x, y, other.x, other.y);
        var forca = 0.05;

        hspeed -= lengthdir_x(forca, ang);
        vspeed -= lengthdir_y(forca, ang);
    }
}