timer--;
if (timer <= 0)
{
	instance_destroy();
	obj_Camera.target = obj_Player_PCIABody;	
}