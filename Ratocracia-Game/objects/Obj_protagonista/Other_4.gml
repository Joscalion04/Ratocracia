/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 670E8E4F
/// @DnDArgument : "code" "if (room == Room_Lv5) {$(13_10)    var cam = view_camera[0];$(13_10)    camera_set_view_size(cam, 1024, 500);$(13_10)    camera_set_view_pos(cam, 0, 0);$(13_10)    display_set_gui_size(1024, 500);$(13_10)}$(13_10)"
if (room == Room_Lv5) {
    var cam = view_camera[0];
    camera_set_view_size(cam, 1024, 500);
    camera_set_view_pos(cam, 0, 0);
    display_set_gui_size(1024, 500);
}