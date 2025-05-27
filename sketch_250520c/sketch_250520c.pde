// introduccion a estructuras repetitivas: ciclos for
// ejemplo 3: fila de cuadrados x 2 anidados

int mod;

void setup() {
  size( 500, 500 );
  mod = width / 10 ;   //50
}

void draw() {
  background( 255 );

  // itero 10 veces cada 50 unidades
  for ( int x = 0; x < width; x += mod ) {
    for ( int y = 0; y < width; y += mod ) {
      fill( 255 );
      rect( x, y, mod, mod );
      fill( 0 );
      text( x + " / " + y, x+10, y+20);
    }
  }
}
