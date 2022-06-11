if (increase == true)
{
	draw_Extra++;
	if (draw_Extra > draw_ExtraMax)
	{
		increase = false;
	}
}
else
{
	draw_Extra--;
	if (draw_Extra < 2)
	{
		draw_Extra = 1;
		increase = true;
	}
}


alarm_set(0, animateTime);
