/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 252AFE51
/// @DnDArgument : "spriteind" "Spr_rat_run"
/// @DnDSaveInfo : "spriteind" "Spr_rat_run"
sprite_index = Spr_rat_run;
image_index = 0;

/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 715F2043
/// @DnDArgument : "speed" "0.5"
image_speed = 0.5;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
/// @DnDVersion : 1.1
/// @DnDHash : 3DCD2972
/// @DnDArgument : "direction" "0"
direction = 0;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 3CF23095
/// @DnDArgument : "speed" "5"
speed = 5;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 022063A9
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if(gravity == false){$(13_10)	direction = 0;$(13_10)	speed = 5;$(13_10)}else{$(13_10)	direction = 0;$(13_10)	speed = 5;$(13_10)}"
/// @description Execute Code
if(gravity == false){
	direction = 0;
	speed = 5;
}else{
	direction = 0;
	speed = 5;
}