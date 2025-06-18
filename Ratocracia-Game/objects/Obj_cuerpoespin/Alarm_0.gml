/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 64D4AF26
/// @DnDArgument : "code" "sprite_index = Spr_puercoespin_atack;$(13_10)image_index = 0;$(13_10)$(13_10)/// @description Execute Code$(13_10)var magia1 = instance_create_layer(x, y, "Instances", Obj_flecha);$(13_10)$(13_10)// Asegúrate de que existe una instancia del protagonista$(13_10)if (instance_exists(Obj_protagonista)) {$(13_10)    magia1.direction = point_direction(x, y, Obj_protagonista.x, Obj_protagonista.y);$(13_10)} else {$(13_10)    magia1.direction = random_range(225, 315); // fallback si no hay protagonista$(13_10)}$(13_10)$(13_10)magia1.speed = 5;$(13_10)$(13_10)alarm_set(0, 120);$(13_10)"
sprite_index = Spr_puercoespin_atack;
image_index = 0;

/// @description Execute Code
var magia1 = instance_create_layer(x, y, "Instances", Obj_flecha);

// Asegúrate de que existe una instancia del protagonista
if (instance_exists(Obj_protagonista)) {
    magia1.direction = point_direction(x, y, Obj_protagonista.x, Obj_protagonista.y);
} else {
    magia1.direction = random_range(225, 315); // fallback si no hay protagonista
}

magia1.speed = 5;

alarm_set(0, 120);