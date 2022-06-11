grabCameraHalf_height = camera_get_view_height(view_camera[0])/1.5;
grabCameraHalf_width = camera_get_view_width(view_camera[0])/5.2;

draw_set_font(font_Menu);
draw_set_halign(fa_center);

txt_menu1 = "Продолжить";
txt_menu2 = "Новая игра";
txt_menu3 = "Настройки";
txt_menu4 = "Выход";

textSize = 3;
wiggle = 0;

colorAnimate = c_silver;
colorNormal = c_gray;
colorShadow = c_black;
//colorActive = c_aqua;

//анимация покачивания
start = -1;
dest = 1;
durection = 240;
time = 0;

//анимация блика
startb = 0;
destb = 1;
durectionb = 40;
timeb = 0;

blink=0;

//позиции для элементов меню
posY_1 = 0;
posY_2 = 50;
posY_3 = 100;
posY_4 = 150;

//высота анимации выбора и триггер
draw_Extra = 1;
draw_ExtraMax = 4;
animateTime = 9;
increase = true;

alarm[0] = animateTime;

selected = 1;