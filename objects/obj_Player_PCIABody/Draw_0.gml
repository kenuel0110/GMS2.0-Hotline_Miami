if (walk_Timer > 5) //когда счётчик больше пяти ноги прорисовываються
{
	draw_sprite_ext( //прорисовка ног
	spr_PCIALegs,
	image_index,
	x,
	y,
	image_xscale,
	image_yscale,
	movement_direction,
	image_blend,
	image_alpha); 
}

//draw_self(); 


    draw_sprite_ext(	//прорисовка туловища c оружием
	weapon_sprite,
	image_index,
	x,
	y,
	image_xscale,
	image_yscale,
	image_angle,
	image_blend,
	image_alpha
	);

//отрисовка доп информации
if (obj_testUI.debug == true)
{
	var text_1 = "Ammo: " + string(ammoPlayer);
	var text_2 = "Weapon: " + string(weapon);
	var text_3 = "_animation: " + string(_animation);


	
	draw_text_transformed(x, y - 40, text_1, 1, 1, 0);
	draw_text_transformed(x, y - 60, text_2, 1, 1, 0);
	draw_text_transformed(x, y - 80, text_3, 1, 1, 0);


}