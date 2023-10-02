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
	switch dir {
	case 0: sprite_index = spr_player_idle; break;
	case 1: sprite_index = spr_player_idle; break;
	case 2: sprite_index = spr_idleleft; break;
	case 3: sprite_index = spr_player_idle; break;
	}
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

if (axis_x > 0){
	sprite_index = spr_runright;
	dir = 0;
}

if (axis_x < 0){
	sprite_index = spr_runleft;
	dir = 2;
}
if (axis_y > 0){
	sprite_index = spr_player;
	dir = 3;
}
if (axis_y > 0){
	sprite_index = spr_player;
	dir = 1;
}

nearbyNPC = collision_rectangle(x-lookRange, y-lookRange, x+lookRange,y+lookRange,obj_hangmandealer,false,true);
if nearbyNPC{
	if (instance_exists(obj_textbox)){
	instance_create_depth(x,y,-10000,obj_textbox);
	}
	
}
if !nearbyNPC{
}







depth =-y;

