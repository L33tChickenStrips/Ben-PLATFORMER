/// @description Insert description here
// You can write your code in this editor

//check to see if we collided with the enemy head (shoulders)
if (y<= other.y )
	{
		yVector = jumpForce;
		EnemyHurt();
	}
	else
	{
		x = x -xVector;
		PlayerHurt();  
	}