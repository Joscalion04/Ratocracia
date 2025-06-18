#region Caida
if (y > room_height && !global.dialogue_isactive) { // Solo morir si no hay diálogo activo
    x = x_inicial;
    y = y_inicial;
    vspeed = 0;
    vidas--;
}
#endregion

#region Movimiento Horizontal
var hor = 0;
if (!global.dialogue_isactive) {
    var move_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
    var move_left  = keyboard_check(vk_left)  || keyboard_check(ord("A"));
    hor = move_right - move_left;
    if(hor != 0) {
        if (place_free(x + hor * 2, y)) {
            x += hor * 5;
        }
        image_xscale = hor;
        // Cambiar a sprite de correr solo si está en el suelo
        if (place_meeting(x, y+1, Obj_base)) {
            sprite_index = Spr_rat_run;
        }
        image_speed = 0.5;
    } else {
        // Cambiar a sprite idle solo si está en el suelo
        if (place_meeting(x, y+1, Obj_base)) {
            sprite_index = Spr_rat_idle;
        }
        image_speed = 0.5;
    }
} else {
    sprite_index = Spr_rat_idle;
    image_speed = 0.5;
}
#endregion

#region Salto
if (!global.dialogue_isactive) {
    var en_suelo = place_meeting(x, y+1, Obj_base);
    
    // Si está en el suelo, restablece los saltos
    if (en_suelo) {
        saltos_restantes = saltos_maximos;
    }
    
    // Cambiar a sprite de salto cuando está en el aire
    if (!en_suelo) {
        sprite_index = Spr_rat_jump;
        image_speed = 0.5;
    }
    
    if ((keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("W"))) && saltos_restantes > 0) {
        vspeed = -10;
        saltos_restantes -= 1;
        sprite_index = Spr_rat_jump; // Cambiar al sprite de salto al saltar
        image_speed = 0.5;
    }
}
#endregion

if (vidas <= 0) {
    room_restart();
}