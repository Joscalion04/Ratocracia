sprite_index = Spr_rat_idle;
image_index = 0;

image_speed = 0;

x_inicial = x;
y_inicial = y;
invulnerable = false;

vidas = 3;

saltos_maximos = 1;
saltos_restantes = 1;

// Create del Obj_camera (o donde manejes la cámara)

var cam_w = 1024;
var cam_h = 700;

view_camera[0] = camera_create_view(0, 0, cam_w, cam_h, 0, Obj_protagonista, -1, -1, cam_w / 2, cam_h / 2);
