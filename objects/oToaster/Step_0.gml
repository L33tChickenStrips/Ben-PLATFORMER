/// @description Insert description here
// You can write your code in this editor

//if key is pressed then right = 1, otherwise right = 0
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);


jump = keyboard_check(vk_space);

xDirection = right - left;

xVector = xSpeed * xDirection;
yVector = yVector + grv;




//check to see if we move xVector pixels (4), 
//does this collide with wall?



if place_meeting(x + xVector, y, oWall)
	{
		//as long as the next pixel is empty, move there
		//! means not
		while (!place_meeting(x + xDirection, y, oWall))
		{
			x = x + xDirection;
		}
		xVector = 0;
	}

x = x + xVector;


if place_meeting(x, y + yVector, oWall)
	{
		//as long as the next pixel is empty, move there
		//! means not
		while (!place_meeting(x, y+sign(yVector), oWall))
		{
			y = y+sign(yVector);
		}
		yVector = 0;
	}
	
y = y + yVector;

if (place_meeting(x, y + 1, oWall) and (jump))
	{
		yVector = jumpForce;
	}

//die in ppit
if (y >= room_height)
	{
room_restart();	
	} 
