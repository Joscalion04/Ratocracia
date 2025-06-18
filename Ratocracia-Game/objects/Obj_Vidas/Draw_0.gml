/// @DnDAction : YoYo Games.Drawing.Draw_Sprites_Stacked
/// @DnDVersion : 1
/// @DnDHash : 4462FCF5
/// @DnDArgument : "x" "30"
/// @DnDArgument : "y" "560"
/// @DnDArgument : "number" "global.vidas"
var l4462FCF5_0 = sprite_get_width(noone);var l4462FCF5_1 = 0;for(var l4462FCF5_2 = global.vidas; l4462FCF5_2 > 0; --l4462FCF5_2) {	draw_sprite(noone, 0, 30 + l4462FCF5_1, 560);	l4462FCF5_1 += l4462FCF5_0;}