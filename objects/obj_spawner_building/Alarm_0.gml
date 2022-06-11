var grabCamera_HalfHeight = camera_get_view_height(view_camera[0])/1.3;
var grabCamera_Width = camera_get_view_width(view_camera[0]);

var _buffer = random_range(18, 22);

var left = instance_create_layer(
grabCamera_Width + 120,
grabCamera_HalfHeight - _buffer,
"Instances_Building",
obj_building);

left.direction = 180;
left.speed = 2.4;


alarm_set(0, random_range(110, 240));