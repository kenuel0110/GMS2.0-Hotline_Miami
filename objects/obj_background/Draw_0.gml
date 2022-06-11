var grabCamera_x = camera_get_view_x(view_camera[0]);
var grabCamera_y = camera_get_view_y(view_camera[0]);

var grabCamera_Width = camera_get_view_width(view_camera[0]);
var grabCamera_Height = camera_get_view_height(view_camera[0]);
var buffer_ = 60;


hue += 0.2;
if (hue > 255) {hue = 0}

color1 = make_color_hsv(hue, 91, 75);
draw_rectangle_color(
grabCamera_x - buffer_,
grabCamera_y - buffer_,
grabCamera_x + grabCamera_Width + buffer_,
grabCamera_y + grabCamera_Height + buffer_,
color1, color1, color2, color2, 0);