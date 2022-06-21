//остановка анимации (надеюсь работает)
if(image_index = 5)
{
	image_speed = 0;
}

//если объект за пределами комнаты, он удалиться
if (
bbox_right < 0 ||
bbox_left > room_width ||
bbox_top > room_height ||
bbox_bottom < 0
)
{
	instance_destroy(obj_shot, false)
}