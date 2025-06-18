/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6F3EBDF1
/// @DnDArgument : "code" "// Movimiento hacia el jugador$(13_10)if (instance_exists(Obj_protagonista)) {$(13_10)    // Dirección hacia el jugador$(13_10)    var dir_objetivo = point_direction(x, y, Obj_protagonista.x, Obj_protagonista.y);$(13_10)    $(13_10)    // Vector hacia jugador$(13_10)    var vec_x = lengthdir_x(1, dir_objetivo);$(13_10)    var vec_y = lengthdir_y(1, dir_objetivo);$(13_10)    $(13_10)    // Vector aleatorio$(13_10)    var dir_aleatoria = irandom_range(0, 359);$(13_10)    var vec_ale_x = lengthdir_x(1, dir_aleatoria);$(13_10)    var vec_ale_y = lengthdir_y(1, dir_aleatoria);$(13_10)    $(13_10)    // Mezclar los vectores con pesos$(13_10)    var peso_objetivo = 0.3;   // 30% hacia jugador$(13_10)    var peso_aleatorio = 0.7;  // 70% aleatorio$(13_10)    $(13_10)    var mov_x = vec_x * peso_objetivo + vec_ale_x * peso_aleatorio;$(13_10)    var mov_y = vec_y * peso_objetivo + vec_ale_y * peso_aleatorio;$(13_10)    $(13_10)    // Normalizar movimiento para que no supere la velocidad$(13_10)    var magnitud = point_distance(0, 0, mov_x, mov_y);$(13_10)    if (magnitud != 0) {$(13_10)        mov_x = mov_x / magnitud * velocidad;$(13_10)        mov_y = mov_y / magnitud * velocidad;$(13_10)    }$(13_10)    $(13_10)    x += mov_x;$(13_10)    y += mov_y;$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)// Verificar colisión con el jugador$(13_10)if (place_meeting(x, y, Obj_protagonista)) {$(13_10)    var jugador = instance_place(x, y, Obj_protagonista);$(13_10)    $(13_10)    if (jugador != noone) {$(13_10)        // Si el jugador pisa al boss desde arriba$(13_10)        if (jugador.vspeed > 0 && jugador.y < y - 8) {$(13_10)            vida -= 25;$(13_10)            jugador.vspeed = -6;$(13_10)            if (vida <= 0) {$(13_10)                instance_destroy();$(13_10)            }$(13_10)        } else {$(13_10)            // El jugador recibe daño si lo choca por los lados$(13_10)            with (jugador) {$(13_10)                vida -= 10;$(13_10)            }$(13_10)        }$(13_10)    }$(13_10)}$(13_10)"
// Movimiento hacia el jugador
if (instance_exists(Obj_protagonista)) {
    // Dirección hacia el jugador
    var dir_objetivo = point_direction(x, y, Obj_protagonista.x, Obj_protagonista.y);
    
    // Vector hacia jugador
    var vec_x = lengthdir_x(1, dir_objetivo);
    var vec_y = lengthdir_y(1, dir_objetivo);
    
    // Vector aleatorio
    var dir_aleatoria = irandom_range(0, 359);
    var vec_ale_x = lengthdir_x(1, dir_aleatoria);
    var vec_ale_y = lengthdir_y(1, dir_aleatoria);
    
    // Mezclar los vectores con pesos
    var peso_objetivo = 0.3;   // 30% hacia jugador
    var peso_aleatorio = 0.7;  // 70% aleatorio
    
    var mov_x = vec_x * peso_objetivo + vec_ale_x * peso_aleatorio;
    var mov_y = vec_y * peso_objetivo + vec_ale_y * peso_aleatorio;
    
    // Normalizar movimiento para que no supere la velocidad
    var magnitud = point_distance(0, 0, mov_x, mov_y);
    if (magnitud != 0) {
        mov_x = mov_x / magnitud * velocidad;
        mov_y = mov_y / magnitud * velocidad;
    }
    
    x += mov_x;
    y += mov_y;
}



// Verificar colisión con el jugador
if (place_meeting(x, y, Obj_protagonista)) {
    var jugador = instance_place(x, y, Obj_protagonista);
    
    if (jugador != noone) {
        // Si el jugador pisa al boss desde arriba
        if (jugador.vspeed > 0 && jugador.y < y - 8) {
            vida -= 25;
            jugador.vspeed = -6;
            if (vida <= 0) {
                instance_destroy();
            }
        } else {
            // El jugador recibe daño si lo choca por los lados
            with (jugador) {
                vida -= 10;
            }
        }
    }
}