/// @description Insert description here
// You can write your code in this editor

///x movement
move_right = keyboard_check(vk_right);
move_up = keyboard_check(vk_up);
move_down = keyboard_check(vk_down);
move_left = keyboard_check(vk_left);


axis_x = (move_right - move_left) * walkspeed ;
axis_y = (move_down - move_up) * walkspeed ;

if (axis_x == 0 && axis_y == 0 ) {
	
}

if (axis_x != 0 || axis_y != 0 ){
	x += axis_x;
	y += axis_y;
}


