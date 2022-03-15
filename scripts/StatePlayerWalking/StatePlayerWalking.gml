// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StatePlayerWalking()
{
	//What To Do
	CheckInputs();

	xDirection = right - left;
	if (xDirection != 0)
	{
		image_xscale = xDirection;
	}
	xVector = xSpeed * xDirection;
	CheckCollisionsX();
	x = x + xVector;

	yVector = yVector + grv;
	CheckCollisionsY();	
	y = y + yVector;
	//How To Exit
	if (place_meeting(x, y + 1, oWall) and (jump))
	{
		state = states.jumping;
	}
}