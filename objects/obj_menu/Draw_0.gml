//Продолжить
draw_text_transformed_color(
grabCameraHalf_width,
grabCameraHalf_height + posY_1 + 2,
txt_menu1,
textSize,
textSize,
wiggle,
colorShadow,
colorShadow,
colorShadow,
colorShadow,
1);

draw_text_transformed_color(
grabCameraHalf_width,
grabCameraHalf_height + posY_1,
txt_menu1,
textSize,
textSize,
wiggle,
colorNormal,
colorNormal,
colorNormal,
colorNormal,
1);

draw_text_transformed_color(
grabCameraHalf_width - 2,
grabCameraHalf_height + posY_1 - 2,
txt_menu1,
textSize,
textSize,
wiggle,
colorAnimate,
colorAnimate,
colorAnimate,
colorAnimate,
blink);

//Новая игра
draw_text_transformed_color(
grabCameraHalf_width,
grabCameraHalf_height + posY_2 + 2,
txt_menu2,
textSize,
textSize,
wiggle,
colorShadow,
colorShadow,
colorShadow,
colorShadow,
1);

draw_text_transformed_color(
grabCameraHalf_width,
grabCameraHalf_height + posY_2,
txt_menu2,
textSize,
textSize,
wiggle,
colorNormal,
colorNormal,
colorNormal,
colorNormal,
1);

draw_text_transformed_color(
grabCameraHalf_width - 2,
grabCameraHalf_height + posY_2 - 2,
txt_menu2,
textSize,
textSize,
wiggle,
colorAnimate,
colorAnimate,
colorAnimate,
colorAnimate,
blink);

//Настройки
draw_text_transformed_color(
grabCameraHalf_width,
grabCameraHalf_height + posY_3 + 2,
txt_menu3,
textSize,
textSize,
wiggle,
colorShadow,
colorShadow,
colorShadow,
colorShadow,
1);

draw_text_transformed_color(
grabCameraHalf_width,
grabCameraHalf_height + posY_3,
txt_menu3,
textSize,
textSize,
wiggle,
colorNormal,
colorNormal,
colorNormal,
colorNormal,
1);

draw_text_transformed_color(
grabCameraHalf_width - 2,
grabCameraHalf_height + posY_3 - 2,
txt_menu3,
textSize,
textSize,
wiggle,
colorAnimate,
colorAnimate,
colorAnimate,
colorAnimate,
blink);

//Выход
draw_text_transformed_color(
grabCameraHalf_width,
grabCameraHalf_height + posY_4 + 2,
txt_menu4,
textSize,
textSize,
wiggle,
colorShadow,
colorShadow,
colorShadow,
colorShadow,
1);

draw_text_transformed_color(
grabCameraHalf_width,
grabCameraHalf_height + posY_4,
txt_menu4,
textSize,
textSize,
wiggle,
colorNormal,
colorNormal,
colorNormal,
colorNormal,
1);

draw_text_transformed_color(
grabCameraHalf_width - 2,
grabCameraHalf_height + posY_4 - 2,
txt_menu4,
textSize,
textSize,
wiggle,
colorAnimate,
colorAnimate,
colorAnimate,
colorAnimate,
blink);


var posY_Selected = posY_1;
var text_Selected = txt_menu1;

switch(selected)
{
	case 1:
	posY_Selected = posY_1;
	text_Selected = txt_menu1;
	break;
	
	case 2:
	posY_Selected = posY_2;
	text_Selected = txt_menu2;
	break;
	
	case 3:
	posY_Selected = posY_3;
	text_Selected = txt_menu3;
	break;
	
	case 4:
	posY_Selected = posY_4;
	text_Selected = txt_menu4;
	break;
}

//анимация выбора
for (var i = 0; i < draw_Extra; i++)
{
	draw_text_transformed_color(
	grabCameraHalf_width + i,
	grabCameraHalf_height + posY_Selected + 2 + i,
	text_Selected,
	textSize,
	textSize,
	wiggle,
	make_color_hsv(obj_background.hue - 10, 65, 40),
	make_color_hsv(obj_background.hue - 10, 65, 40),
	make_color_hsv(obj_background.hue - 10, 65, 40),
	make_color_hsv(obj_background.hue - 10, 65, 40),
	1);

	draw_text_transformed_color(
	grabCameraHalf_width + i,
	grabCameraHalf_height + posY_Selected + i,
	text_Selected,
	textSize,
	textSize,
	wiggle,
	make_color_hsv(obj_background.hue + 10, 95, 120),
	make_color_hsv(obj_background.hue + 10, 95, 120),
	make_color_hsv(obj_background.hue + 10, 95, 120),
	make_color_hsv(obj_background.hue + 10, 95, 120),
	1);

	draw_text_transformed_color(
	grabCameraHalf_width - 2 + i,
	grabCameraHalf_height + posY_Selected - 2 + i,
	text_Selected,
	textSize,
	textSize,
	wiggle,
	colorAnimate,
	colorAnimate,
	colorAnimate,
	colorAnimate,
	0.4);

}