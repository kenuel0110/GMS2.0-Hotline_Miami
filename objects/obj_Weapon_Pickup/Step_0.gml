//левитация
if (time < durection)
{
	hover = ease_in_and_out(time, start, dest - start, durection);
	time++
}
else
{
	var tempStart = start;
	start = dest;
	dest = tempStart;
	time = 0;
}