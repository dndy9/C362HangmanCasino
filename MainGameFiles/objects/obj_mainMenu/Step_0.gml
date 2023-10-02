var _up, _down, _accept;

_up = 	keyboard_check_pressed(vk_up);
_down = 	keyboard_check_pressed(vk_down);
_accept = keyboard_check_pressed(ord("D"));


if _up > 0  {
	image_index--;
}

if _down {
	
	image_index++;
}

if image_index = 0 and _accept {
	room_goto(rm_casinoRoom);
}