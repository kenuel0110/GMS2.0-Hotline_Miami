//при сопрмкосновении с игроком
//смена спрайта на тот, который лежит
if (mouse_check_button_released(mb_right))
{
	switch(sprite_index)
	{
		case sprWeapons_Magnum: other.weapon_sprite = sprPCIALWalkMagnum; break; //магнум
	}
	instance_destroy();
}