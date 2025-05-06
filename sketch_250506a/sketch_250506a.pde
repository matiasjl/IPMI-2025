// CONDICIONALES: sirven para limitar acciones o tomar deciciones
// - CONDICION: una expresión booleana (verdadero/falso)
// - eEstructura IF: el contenido entre llaves se ejecuta sólo si la condicion entre parentesis es verdadera
// EVENTOS: la pregunta del cuando, expande la posibilidad a interaccion con mouse y teclado
// -- hay una condicion intrinsica en cada evento, que determina la ejecuccion del codigo entre llaves
// -- combinando con variables, podemos reasignar valores a lo que se dibuja en el draw

color relleno = color(128);
int borde = 0;

void setup() {  //CUANDO se inicia el programa, una sola vez
  size( 500, 500 );
}

void draw() {  //CUANDO se termina de ejecutar el setup, ciclicamente e infinitamente hasta parar el programa
  background( relleno );

  noFill();
  strokeWeight( borde );
  circle( mouseX, mouseY, 100 );
}

void keyPressed() {  //CUANDO se tofca una tecla del teclado
  relleno = color(200, 0, 0);
}

void keyReleased() {  //CUANDO se suelta la tecla del teclado
  relleno = color( 0 );
}

void mousePressed() {  //CUANDO se presiona el mouse
  borde = 10;
}

void mouseReleased() {  //CUANDO se suelta el clic del mouse
  borde = 0;
}

void mouseMoved() {  //CUANDO se mueve el mouse
  //borde = 100;  //PENDIENTE condicionales para que funcione correctamente
}
