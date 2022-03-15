// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StatePlayerJumping()
{
	
	//what to do
	yVector = jumpForce;
	if (xDirection != 0)
	{
		image_xscale = xDirection;
	}
	//How to exit
	if (place_meeting(x, y + 1, oWall))
	{
		state = states.walking;
	}

}