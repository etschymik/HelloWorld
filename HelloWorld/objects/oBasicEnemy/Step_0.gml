vsp = vsp + global.grav;

// horizontal collision
if(place_meeting(x+hsp, y, oCollision))
{
	while(!place_meeting(x+sign(hsp), y, oCollision))
	{
		x = x + sign(hsp);
	}
	hsp = -hsp;
}
x = x + hsp;

// vertical collision
if(place_meeting(x, y+vsp, oCollision))
{
	while(!place_meeting(x, y+sign(vsp), oCollision))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;