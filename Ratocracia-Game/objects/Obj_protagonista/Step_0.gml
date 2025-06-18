#region Caida
if (y > room_height) {
    x = x_inicial;
    y = y_inicial;
    vspeed = 0;
}
#endregion

#region Movimiento Horizontal
var move_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
var move_left  = keyboard_check(vk_left)  || keyboard_check(ord("A"));
var hor = move_right - move_left;

if(hor != 0) {
	if (place_free(x+ hor * 2, y)) {
		x += hor * 5;
	}
	image_xscale = hor;
}
#endregion

#region Salto
if ((keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("W"))) 
    && collision_rectangle(x-8, y, x+8, y+1, Obj_base,false,false)) {
	vspeed = -10;
}
#endregion

#region Animación
var en_suelo = collision_rectangle(x-8, y+1, x+8, y+2, Obj_base, false, false);

if (!en_suelo) {
    // Si está en el aire
    sprite_index = Spr_rat_jump;
    image_speed = 0.5;
} else if (hor != 0) {
    // Si está en el suelo y se está moviendo
    sprite_index = Spr_rat_run;
    image_speed = 0.5;
} else {
    // Si está en el suelo y quieto
    sprite_index = Spr_rat_idle;
    image_speed = 0.5;
}
#endregion
