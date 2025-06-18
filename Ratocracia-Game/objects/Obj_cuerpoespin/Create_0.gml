/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 05F11783
/// @DnDArgument : "spriteind" "Spr_puercoespin_idle"
/// @DnDSaveInfo : "spriteind" "Spr_puercoespin_idle"
sprite_index = Spr_puercoespin_idle;
image_index = 0;

/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 40603589
/// @DnDArgument : "speed" "0.05"
image_speed = 0.05;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 375B27BC
/// @DnDArgument : "steps" "irandom_range(60, 120)"
alarm_set(0, irandom_range(60, 120));

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 025718D2
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)x_inicial = x;$(13_10)y_inicial = y;$(13_10)"
/// @description Execute Code
x_inicial = x;
y_inicial = y;