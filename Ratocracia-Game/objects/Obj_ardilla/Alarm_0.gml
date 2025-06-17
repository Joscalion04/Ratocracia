/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 64D4AF26
/// @DnDArgument : "code" "sprite_index = Spr_atack;$(13_10)image_index = 0;$(13_10)$(13_10) /// @description Execute Code$(13_10)var magia1 = instance_create_layer(x, y, "Instances", Obj_magia);$(13_10)magia1.direction = random_range(225, 315); // ángulos hacia abajo$(13_10)magia1.speed = 5;$(13_10)$(13_10)alarm_set(0, 120);"
sprite_index = Spr_atack;
image_index = 0;

 /// @description Execute Code
var magia1 = instance_create_layer(x, y, "Instances", Obj_magia);
magia1.direction = random_range(225, 315); // ángulos hacia abajo
magia1.speed = 5;

alarm_set(0, 120);