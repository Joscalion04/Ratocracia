/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1CF343EA
/// @DnDArgument : "code" " /// @description Execute Code$(13_10)$(13_10)//mitavistaX=camera_get_view_width(view_camera[0])/2;$(13_10)//mitavistaY=camera_get_view_height(view_camera[0])/2;$(13_10)$(13_10)//camera_set_view_pos(view_camera[0],Obj_protagonista.x -  ,Obj_protagonista.y - mitavistaY);$(13_10)$(13_10)if place_free(x,y+1){$(13_10)	gravity = true;$(13_10)}else{$(13_10)	gravity = false;$(13_10)}"
 /// @description Execute Code

//mitavistaX=camera_get_view_width(view_camera[0])/2;
//mitavistaY=camera_get_view_height(view_camera[0])/2;

//camera_set_view_pos(view_camera[0],Obj_protagonista.x -  ,Obj_protagonista.y - mitavistaY);

if place_free(x,y+1){
	gravity = true;
}else{
	gravity = false;
}