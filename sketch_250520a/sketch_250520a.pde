// introduccion a estructuras repetitivas: ciclos for
// ejemplo 1: circulos concentricos

void setup() {
  size( 500, 500 );
}

void draw() {
  background( 255 );

  //for que repite 10 veces, comenzando en 0 y sumando de a 1
  for ( int i = 1; i<11; i++ ) {
    //estilos de circulos
    noFill();
    stroke( i*(255/10) );
    strokeWeight( i ) ;
    // dibujo los 10 circulos
    circle( width/2, height/2, i*(500/10) );
  }
}
