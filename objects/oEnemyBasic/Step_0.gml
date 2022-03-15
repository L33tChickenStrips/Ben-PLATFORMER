/// @description Insert description here
// You can write your code in this editor
if (iFrames)
{
	invTimer -=1/room_speed
	if(invTimer<0)
	{
		invTimer = 0.5;	
		iFrames = false;
	}
}
