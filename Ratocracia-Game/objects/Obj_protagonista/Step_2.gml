#region Gravedad
if (!collision_rectangle(x-8, y, x+8, y+1, Obj_base,false,false)) {
	gravity = 0.3;
}

if (vspeed > 0) {
	var ground = collision_rectangle(x-8,y,x+8,y+vspeed,Obj_base,false, false);
	if (ground) {
		y= ground.y;
		vspeed = 0;
		gravity = 0;
	}
} else if (vspeed < 0) {
	var ceiling = collision_rectangle(x-8,y-25,x+8,y-25+vspeed,Obj_base,false,false);
	if (ceiling) {
		y = ceiling.y + ceiling.sprite_height + 25;
		vspeed = 0;
	}
}
#endregion