var start_x = 20;
var start_y = 20;

var num_vidas = Obj_protagonista.vidas;


for (var i = 0; i < num_vidas; i++) {
    draw_sprite(Spr_vida, 0, start_x + i * 40, start_y);
}
