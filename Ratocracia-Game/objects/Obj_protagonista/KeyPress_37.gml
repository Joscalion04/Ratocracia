/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 3E04A69A
/// @DnDArgument : "spriteind" "Spr_rat_run"
/// @DnDSaveInfo : "spriteind" "Spr_rat_run"
sprite_index = Spr_rat_run;
image_index = 0;

/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 7EAC5A6B
/// @DnDArgument : "speed" "0.5"
image_speed = 0.5;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
/// @DnDVersion : 1.1
/// @DnDHash : 47F2F671
/// @DnDArgument : "direction" "180"
direction = 180;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 516679BC
/// @DnDArgument : "speed" "5"
speed = 5;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3B6D7236
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if(gravity == false){$(13_10)	direction = 180;$(13_10)	speed = 5;$(13_10)}else{$(13_10)	direction = 180;$(13_10)	speed = 5;$(13_10)}"
/// @description Execute Code
if(gravity == false){
	direction = 180;
	speed = 5;
}else{
	direction = 180;
	speed = 5;
}