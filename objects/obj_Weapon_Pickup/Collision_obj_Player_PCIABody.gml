//при сопрмкосновении с игроком
//смена спрайта на тот, который лежит
if (mouse_check_button_released(mb_right))
{
	switch(sprite_index)
	{
		case sprWeapons_Magnum: other.weapon_sprite = sprPCIALWalkMagnum; other.weapon = "magnum"; break; //магнум
		case sprWeapons_Shotgun: other.weapon_sprite = sprPCIALWalkShotgun; other.weapon = "shotgun"; break; //дробовик
		case sprWeapons_AK: other.weapon_sprite = sprPCIALWalkKalashnikov; other.weapon = "AK"; break; //калаш
	}
	
	other.ammoPlayer = ammoPickUp; //передача патронов игроку
	
	instance_destroy();
}