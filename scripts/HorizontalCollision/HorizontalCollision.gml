// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function HorizontalCollision(object){
	if(place_meeting(x+hsp, y, object))
	{
		while(!place_meeting(x+sign(hsp), y, object))
		{
			x = x + sign(hsp);
		}
		hsp = 0;
	}
}