/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5537A9A6
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// Colisión con el jugador$(13_10)if (instance_exists(Obj_protagonista)) {$(13_10)    if (place_meeting(x, y, Obj_protagonista)) {$(13_10)        with (Obj_protagonista) {$(13_10)            vida -= 10;$(13_10)        }$(13_10)        instance_destroy();$(13_10)    }$(13_10)}$(13_10)"
/// @description Execute Code
// Colisión con el jugador
if (instance_exists(Obj_protagonista)) {
    if (place_meeting(x, y, Obj_protagonista)) {
        with (Obj_protagonista) {
            vida -= 10;
        }
        instance_destroy();
    }
}