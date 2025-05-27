// introduccion a estructuras repetitivas: ciclos for
// ejemplo 2: fila de cuadrados

int mod;

void setup() {
  size( 500, 500 );
  mod = width / 10 ;   //50
}

void draw() {
  background( 255 );

  // itero 10 veces cada 50 unidades
  for( int x = 0 ; x < width ; x += mod ){
    //if( mouseX > width/2 )
      rect( x, 200, mod, mod );
  }
}
