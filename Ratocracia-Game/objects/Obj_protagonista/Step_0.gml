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
	sprite_index = Spr_rat_run;
	image_speed = 0.5;
} else {
	image_speed = 0.5;
	sprite_index = Spr_rat_idle;
}
#endregion

#region Salto
#region Salto
var en_suelo = collision_rectangle(x - 8, y + 1, x + 8, y + 2, Obj_base, false, false);

// Si está en el suelo, restablece los saltos
if (en_suelo) {
    saltos_restantes = saltos_maximos;
}
#endregion