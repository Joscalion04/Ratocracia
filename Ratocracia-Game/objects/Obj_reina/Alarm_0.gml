/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3A7E2B8B
/// @DnDArgument : "code" "var magia = instance_create_layer(x, y, "Instances", Obj_magia_reina);$(13_10)$(13_10)if (instance_exists(Obj_protagonista)) {$(13_10)    magia.direction = point_direction(x, y, Obj_protagonista.x, Obj_protagonista.y);$(13_10)} else {$(13_10)    magia.direction = random_range(225, 315);$(13_10)}$(13_10)$(13_10)magia.speed = 5;$(13_10)$(13_10)alarm[0] = 120;$(13_10)"
var magia = instance_create_layer(x, y, "Instances", Obj_magia_reina);

if (instance_exists(Obj_protagonista)) {
    magia.direction = point_direction(x, y, Obj_protagonista.x, Obj_protagonista.y);
} else {
    magia.direction = random_range(225, 315);
}

magia.speed = 5;

alarm[0] = 120;