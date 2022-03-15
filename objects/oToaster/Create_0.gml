/// @description Insert description here
// You can write your code in this editor

enum states
{
	walking,
	jumping
		
}

state_array[states.walking] = StatePlayerWalking;
state_array[states.jumping] = StatePlayerJumping;

sprite_array[states.walking] = sToaster;
sprite_array[states.jumping] = sToaster;

state = states.walking;


//gloabal variables
global.coins = 0;
global.points = 0;


hp = 3;
iFrames = false;
//xSpeed is how many pixels the player will move each frame
xSpeed = 4;

//what direction the player is moving. 1 = to the right. -1 = to the left, 0 = not moving.
xDirection = 0;

//multiply speed * direction
xVector = xSpeed * xDirection;

//gravity
grv = .45;

yVector = 0;

jumpForce = -14; 


