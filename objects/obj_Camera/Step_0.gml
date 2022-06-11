var grabCamera_Width = camera_get_view_width(view_camera[0]);	//ширина камеры
var grabCamera_Height = camera_get_view_height(view_camera[0]);		//высота камеры

var grabCamera_X = camera_get_view_x(view_camera[0]);
var grabCamera_Y = camera_get_view_y(view_camera[0]);



if (instance_exists(target))	//если цель существует
{
	//получаем х и у у цели и скрываем то что за комнатой
	var cameraX = clamp(
	target.x - grabCamera_Width / 2,		//центрированая точка
	0,
	room_width - grabCamera_Width);			//ширина комнаты - ширина камеры

	var cameraY = clamp(
	target.y - grabCamera_Height / 2,		//центрированая точка
	0,
	room_height - grabCamera_Height);			//высота комнаты - высота камеры

	smooth = 0.1; //"Плавность" камеры

	camera_set_view_pos(			 //измнение позиции камеры
	view_camera[0],
	lerp(grabCamera_X, cameraX, smooth),
	lerp(grabCamera_Y, cameraY, smooth)); 
}