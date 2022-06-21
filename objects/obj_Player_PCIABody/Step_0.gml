//поворот
image_angle = point_direction(x,y, mouse_x, mouse_y); //поворот верхней части за курсором

//перемещение
var left = keyboard_check(ord("A"));
var right = keyboard_check(ord("D"));
var up = keyboard_check(ord("W"));
var down = keyboard_check(ord("S"));
var shift = keyboard_check(vk_shift);

//наш код ходьбы
movement_direction = point_direction(0, 0, right - left, down - up); //направление движениия
movement_input = (right - left != 0) or (down - up != 0);		//триггер ввода

if(movement_input)
{
h_speed = lengthdir_x(walkSpeed, movement_direction);	//скорость высоты
v_speed = lengthdir_y(walkSpeed, movement_direction);	//скоросто вкртикали

x += h_speed;
y += v_speed;

}



/*  оригинальный код ходьбы
var horizontalSpeed = right - left * walkSpeed;
var verticalSpeed = down - up * walkSpeed;

x += horizontalSpeed; // ходьба горизонталь
y += verticalSpeed;	//ходьба вертикаль
*/
//анимация
//если нет дополнительной анимации (выстрела или перезарядки)
if (_animation == false) 
{
	//если координаты не меняются, анимация стоит
	if (xprevious == x && yprevious == y)
	{
		image_speed = 0;
		walk_Timer = 0;                //когда нет анимации счётчик сбрасывается
	}
	else
	{
		image_speed = 1;				//иначе продолжается
		walk_Timer++;
	}
}
//если есть дополнительная анимация
else if (_animation == true)
{
	//если координаты не меняются, ноги стоят
	if (xprevious == x && yprevious == y)
	{
		image_speed = 1;				//иначе продолжается
		walk_Timer = 0;					//когда есть анимация счётчик накапливается
	}
	//иначе анимация идёт и ноги тоже
	else
	{
		image_speed = 1;				//иначе продолжается
		walk_Timer++;
	}
}

//аниации оружия
//если ключ дополнительной анимации включён
if(_animation == true){
	//следит за спрайтом
	switch(weapon_sprite)
	{
	case sprPCIALAttackMagnum:
	//когда анимация заканчиваеться меняться на нужный и меняет ключ
		if (image_index >= 1)
		{
			weapon_sprite = sprPCIALWalkMagnum;		
			_animation = false;
		}
	break;
	
	case sprPCIALAttackKalashnikov:
	//когда анимация заканчиваеться меняться на нужный и меняет ключ
		if (image_index >= 1)
		{
			weapon_sprite = sprPCIALWalkKalashnikov;		
			_animation = false;
		}
	break;
	
	case sprPCIALAttackShotgun:
	//когда анимация заканчиваеться меняться на нужный и меняет ключ
		if (image_index >= 1)
		{
			weapon_sprite = sprPCIALWalkShotgun;		
			_animation = false;
		}
	break;
	}
}

/*
if (xprevious == x && yprevious == y && _animation == false) //если координаты не меняются, анимация стоит
{
	image_speed = 0;
	walk_Timer = 0;                //когда нет анимации счётчик сбрасывается
}
else
{
	image_speed = 1;				//иначе продолжается
	walk_Timer++;					//когда есть анимация счётчик накапливается
}*/

//управение камерой
if (shift == 1)
{
	if(!instance_exists(obj_targetCamera))	//если нет цели создать
	{
		targetCamera = instance_create_layer(mouse_x, mouse_y, "Instances_1", obj_targetCamera);	//создание цели
	}
	obj_targetCamera.x = clamp(mouse_x, x - 120, x + 120);	//выравнивание цели
	obj_targetCamera.y = clamp(mouse_y, y - 120, y + 120);
	
	obj_targetCamera.timer = 5;		// счётчик пропажи цели
	obj_Camera.target = targetCamera;		//цель камеры изменилась на цель

}

//бросок оружия
if (mouse_check_button_released(mb_right) and weapon != "")
{
	var throwWeapon = instance_create_layer(x, y, "Instances_1", obj_Weapon_Throw);	//здесь точно нужно будет изсенить слой
	throwWeapon.direction = image_angle;	//направление
	throwWeapon.speed = random_range(10,12);  //скорость бросаемого объекта
	
	throwWeapon.ammoThrow = ammoPlayer;   //передача патрон игрока бросаемуму объекту
	
	switch(weapon)
	{
		case "magnum": throwWeapon.sprite_index = sprWeapons_Magnum; break; //магнум
		case "shotgun": throwWeapon.sprite_index = sprWeapons_Shotgun; break; //дробовик
		case "AK": throwWeapon.sprite_index = sprWeapons_AK; break; //ак
	}
	
	weapon = "";	//оружие = пусто
	ammoPlayer = 0;  //патронов тоже ноль
	weapon_sprite = sprPCIALWalkUnarmed;	//если безоружен, то безоружен
}

//стрельба

shoot_Timer--;

//корректировка дула
var shotX = 0;
var shotY = 0;

var spreadWeapon = 0;

if (mouse_check_button(mb_left) and ammoPlayer > 0)
{
	if (shoot_Timer <= 0)
	{
		switch(weapon)
		{
			case "magnum":	//магнум
			
			_animation = true;
			
			shotX = x + lengthdir_x(10, image_angle - 20); //скос вперёд и угол от центра в примерную сторону дула
			shotY = y + lengthdir_y(10, image_angle - 20); //скос вперёд и угол от центра в примерную сторону дула
		
			spreadWeapon = random_range(- obj_weaponData.spread_Magnum, obj_weaponData.spread_Magnum);
			
			var shot = instance_create_layer(shotX,shotY,"Instances_1",obj_shot); //создание пули	
			
			weapon_sprite = sprPCIALAttackMagnum;
			
			shot.image_angle = image_angle + spreadWeapon;
			shot.direction = image_angle + spreadWeapon;
			shot.speed = obj_weaponData.shotSpeed_Magnum;
			//shot.friction = obj_weaponData.friction_Magnum;
			shot.damage = obj_weaponData.damage_Magnum;
			shoot_Timer = obj_weaponData.shoot_Timer_Magnum;
			ammoPlayer--;

			break;
			
			case "AK":	//АК
			
			_animation = true;
			
			shotX = x + lengthdir_x(8, image_angle - 10); //скос вперёд и угол от центра в примерную сторону дула
			shotY = y + lengthdir_y(8, image_angle - 10); //скос вперёд и угол от центра в примерную сторону дула
		
			spreadWeapon = random_range(- obj_weaponData.spread_AK, obj_weaponData.spread_AK);
			
			var shot = instance_create_layer(shotX,shotY,"Instances_1",obj_shot); //создание пули	
			
			weapon_sprite = sprPCIALAttackKalashnikov;
			
			shot.image_angle = image_angle + spreadWeapon;
			shot.direction = image_angle + spreadWeapon;
			shot.speed = obj_weaponData.shotSpeed_AK;
			shot.damage = obj_weaponData.damage_AK;
			shoot_Timer = obj_weaponData.shoot_Timer_AK;
			ammoPlayer--;

			break;
			
			case "shotgun":	//Дробовик
			
			_animation = true;
			
			shotX = x + lengthdir_x(8, image_angle - 10); //скос вперёд и угол от центра в примерную сторону дула
			shotY = y + lengthdir_y(8, image_angle - 10); //скос вперёд и угол от центра в примерную сторону дула
		
			spreadWeapon = random_range(- obj_weaponData.spread_Shotgun, obj_weaponData.spread_Shotgun);
			
			for (var i = 0; i < 6; i++)
			{
				var shot = instance_create_layer(shotX,shotY,"Instances_1",obj_shot); //создание пули	
					shot.image_angle = image_angle + spreadWeapon;
					shot.direction = image_angle + random_range(- obj_weaponData.spread_Shotgun, obj_weaponData.spread_Shotgun);
					shot.speed = obj_weaponData.shotSpeed_Shotgun;
					shot.damage = obj_weaponData.damage_Shotgun;
				
			}
			
			shoot_Timer = obj_weaponData.shoot_Timer_Shotgun;
			weapon_sprite = sprPCIALAttackShotgun;
			ammoPlayer--;

			break;
		}
	}
}