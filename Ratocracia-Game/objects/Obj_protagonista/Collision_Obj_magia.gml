/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 205AB64A
/// @DnDArgument : "code" "if (!invulnerable) {$(13_10)    x = x_inicial;$(13_10)    y = y_inicial;$(13_10)    invulnerable = true;$(13_10)    alarm[0] = 30; // 0.5 segundos si estás a 60 FPS$(13_10)}"
if (!invulnerable) {
    x = x_inicial;
    y = y_inicial;
    invulnerable = true;
    alarm[0] = 30; // 0.5 segundos si estás a 60 FPS
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 62127C08
/// @DnDApplyTo : other
with(other) instance_destroy();