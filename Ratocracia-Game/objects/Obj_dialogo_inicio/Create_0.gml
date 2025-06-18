global.dialogue_isactive = true;


reset_dialogue_defaults();


myPortrait = Spr_portrait_coneja;  
myVoice = snd_voice1;
myFont = fnt_dialogue;
myName = "Coneja";


var lineas = [
    "¡Oh, pero que tenemos aqui! Un pequeno visitante...",
    "Bienvenido a mi... *sonrie dulcemente* ...nuestro mundo, querido.",
    "Permiteme ensenarte lo basico para moverte por este mundo.",
    "Usa las flechas <- -> o las teclas W A S D para caminar.",
    "Presiona Espacio para saltar. ¡Muy util para subir!",
	"(y es la gracia del juego)",
    "¡Perfecto! Sabia que eras especial desde que te vi.",
    "Sube lo mas que puedas, no dejes que los demas te humillen",
    "Y yo estare aqui, observandote... *guina el ojo* ...apoyandote en cada paso.",
    "Ve con cuidado, pequeno. Te estare esperando... en la cima.",
];

create_dialogue(lineas, -1);
global.dialogue_isactive = false;