// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function VerticalCollision(object){
	if(place_meeting(x, y+vsp, object))
	{
		while(!place_meeting(x, y+sign(vsp), object))
		{
			y = y + sign(vsp);
		}
		vsp = 0;
	}
}