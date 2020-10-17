// player inputs
keyLeft = keyboard_check(vk_left);
keyRight = keyboard_check(vk_right);
keyJump = keyboard_check_pressed(vk_up);

// calculate movements
move = keyRight - keyLeft;
hsp = move * walkspd;
vsp = vsp + global.grav;

// jumping
if(place_meeting(x, y+1, oCollision) || place_meeting(x,y+1,oPlayerCollision)) && (keyJump)
{
	vsp = -jumpspd;
}

// horizontal collision
HorizontalCollision(oCollision);
HorizontalCollision(oPlayerCollision);
x = x + hsp;

// vertical collision
VerticalCollision(oCollision);
VerticalCollision(oPlayerCollision);
y = y + vsp;

// key system
if(place_meeting(x,y,oGoldKey)) && (hasKey = false)
{
	hasGoldKey = true;
	hasKey = true;
	instance_destroy(oGoldKey);
}
if(place_meeting(x+hsp,y,oGoldDoor)) && (hasGoldKey = true)
{
	hasGoldKey = false;
	hasKey = false;
	instance_destroy(oGoldDoor);
}
if(place_meeting(x,y,oSilverKey)) && (hasKey = false)
{
	hasSilverKey = true;
	hasKey = true;
	instance_destroy(oSilverKey);
}
if(place_meeting(x+hsp,y,oSilverDoor)) && (hasSilverKey = true)
{
	hasSilverKey = false;
	hasKey = false;
	instance_destroy(oSilverDoor);
}
