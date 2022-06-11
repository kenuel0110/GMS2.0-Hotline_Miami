image_angle += spin;	//вращение

if(speed < 0.01)
{
	var pickUp = instance_create_layer(x, y, "Instances_1", obj_Weapon_Pickup);	//создание пикапа вместо "летяги" (изменить слой)
	pickUp.sprite_index = sprite_index;		//спрайт
	pickUp.image_angle = image_angle;		//угол
	
	pickUp.ammoPickUp = ammoThrow; //передача патрон
	
	instance_destroy();
}