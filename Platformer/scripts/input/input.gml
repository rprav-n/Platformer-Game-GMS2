function input(){
	left = keyboard_check(vk_left) || keyboard_check(ord("A"));
	right = keyboard_check(vk_right) || keyboard_check(ord("D"));
	jump = keyboard_check_pressed(vk_space);
	jump_held = keyboard_check(vk_space);
	dash = keyboard_check_pressed(vk_shift);
}