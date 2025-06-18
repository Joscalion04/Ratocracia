/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 06E8D410
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if (place_meeting(x, y, Obj_protagonista)) {$(13_10)    var jugador = instance_place(x, y, Obj_protagonista);$(13_10)    $(13_10)    if (jugador != noone) {$(13_10)        // Si el jugador pisa al boss desde arriba$(13_10)        if (jugador.vspeed > 0 && jugador.y < y - 8) {$(13_10)            vida -= 25;$(13_10)            jugador.vspeed = -6;$(13_10)            if (vida <= 0) {$(13_10)                instance_destroy();$(13_10)            }$(13_10)        } else {$(13_10)            // El jugador recibe daño si lo choca por los lados$(13_10)            with (jugador) {$(13_10)                vida -= 10;$(13_10)            }$(13_10)        }$(13_10)    }$(13_10)}$(13_10)"
/// @description Execute Code
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