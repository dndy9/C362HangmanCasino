// basic movement functions 
//keyboard_check outputs 0 if not and 1 if pushed
move_right = keyboard_check(vk_right);
move_up = keyboard_check(vk_up);
move_down = keyboard_check(vk_down);
move_left = keyboard_check(vk_left);

// ( 1 - 0 ) * walkspeed if moving right 
axis_x = (move_right - move_left) * walkspeed ;
axis_y = (move_down - move_up) * walkspeed ;


//not moving
if (axis_x == 0 && axis_y == 0 ) {
	
}
//moving checks if axis x or y is being pushed
if (axis_x != 0 || axis_y != 0 ){
	
	//x and y on the room grid 
	//collision point to check if it is in contact with anything and stops movement 

	 if !collision_point(x+axis_x,y,obj_object_collision,true,true){	
		 x += axis_x;
	 }
	 if !collision_point(x,y+axis_y,obj_object_collision,true,true){	
		 y += axis_y;
	}
	
	
	
}

depth =-y;

