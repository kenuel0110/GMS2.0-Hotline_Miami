if (time < durection)
{
	wiggle = ease_in_and_out(time, start, dest - start, durection);
	time++
}
else
{
	var tempStart = start;
	start = dest;
	dest = tempStart;
	time = 0;
}

if (timeb < durectionb)
{
	blink = ease_in_and_out(timeb, startb, destb - startb, durectionb);
	timeb++
}
else
{
	var tempStartb = startb;
	startb = destb;
	destb = tempStartb;
	timeb = 0;
}

var keyDownArrow = keyboard_check_released(vk_down);
var keyUpArrow = keyboard_check_released(vk_up);

var keyDownS = keyboard_check_released(ord("S"));
var keyUpW = keyboard_check_released(ord("W"));

if(keyDownArrow == 1 || keyDownS == 1)
{
	switch(selected)
	{
		case 1:
		selected = 2;
		break;
		case 2:
		selected = 3;
		break;
		case 3:
		selected = 4;
		break;
		case 4:
		selected = 1;
		break;
	}

}

if(keyUpArrow == 1 || keyUpW == 1)
{
	switch(selected)
	{
		case 1:
		selected = 4;
		break;
		case 2:
		selected = 1;
		break;
		case 3:
		selected = 2;
		break;
		case 4:
		selected = 3;
		break;
	}

}