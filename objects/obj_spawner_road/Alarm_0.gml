var grabCamera_HalfHeight = camera_get_view_height(view_camera[0])/1.12;
var grabCamera_Width = camera_get_view_width(view_camera[0]);


var left = instance_create_layer(
grabCamera_Width + 320,
grabCamera_HalfHeight,
"Instances_Road",
obj_roadPart);

left.direction = 180;
left.speed = 2.6;


alarm_set(0, reset_Time);