currentDirection = irandom_range(0,1);
hsp = 0;
vsp = 0;

walkspd = 2;

// enemy movement
if(currentDirection = 0) // go left if current direction is 0
{
	hsp = -walkspd;
}
else	// going right if current direction is 1
{
	hsp = walkspd;
}