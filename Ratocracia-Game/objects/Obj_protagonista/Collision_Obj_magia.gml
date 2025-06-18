/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 205AB64A
/// @DnDArgument : "code" "if (!invulnerable) {$(13_10)    x = x_inicial;$(13_10)    y = y_inicial;$(13_10)    invulnerable = true;$(13_10)	vidas--;$(13_10)    alarm[0] = 30;$(13_10)} else {$(13_10)    invulnerable = false; // Escudo se usa una vez$(13_10)}   "
if (!invulnerable) {
    x = x_inicial;
    y = y_inicial;
    invulnerable = true;
	vidas--;
    alarm[0] = 30;
} else {
    invulnerable = false; // Escudo se usa una vez
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 62127C08
/// @DnDApplyTo : other
with(other) instance_destroy();