var grabCamera_HalfHeight = camera_get_view_height(view_camera[0])/1.15;
var grabCamera_Width = camera_get_view_width(view_camera[0]);

var _buffer = random_range(18, 30);

var left = instance_create_layer(
grabCamera_Width + 20,
grabCamera_HalfHeight - _buffer,
"Instances_OnTop",
obj_lighter);

left.direction = 180;
left.speed = 2;


alarm_set(0, reset_Time);
