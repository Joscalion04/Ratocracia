/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5AFA32D3
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// Evento de colisión con obj_player$(13_10)if (place_meeting(x, y, Obj_protagonista)) {$(13_10)    room_goto(Room_Lv5); // Cambia esto por tu room objetivo$(13_10)}"
/// @description Execute Code
// Evento de colisión con obj_player
if (place_meeting(x, y, Obj_protagonista)) {
    room_goto(Room_Lv5); // Cambia esto por tu room objetivo
}

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 2F329E08
/// @DnDArgument : "soundid" "Snd_final"
/// @DnDArgument : "loop" "1"
/// @DnDSaveInfo : "soundid" "Snd_final"
audio_play_sound(Snd_final, 0, 1, 1.0, undefined, 1.0);