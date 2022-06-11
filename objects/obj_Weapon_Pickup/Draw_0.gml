//тень
draw_sprite_ext(sprite_index, 1, x , y, image_xscale, image_yscale, image_angle, c_white, 0.4);
//отрисовка спрайта
draw_sprite_ext(sprite_index, 0, x - hover, y - hover, image_xscale, image_yscale, image_angle, c_white, 1);