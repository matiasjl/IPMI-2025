
// funcion que NO retorna valor: void
// NATIVAS DE PROCESING: rect(), ellipse(), line(), etc
// REFLEXION tp3: usarlo para dibujar alguna figura base a repetir con for, por ejemplo
void rectCircle( float x, float y, float t ) {
  rect( x - t/2, y - t/2, t, t );
  circle( x, y, t*0.9 );
}

void dibujarBotonCircular( float x, float y, float radio ){
  push();
  strokeWeight( 5 );
  circle( x, y, radio*2 );
  pop();
}

// Atentis que no dibuja, pero cumple como funcion sin return
void reiniciarElEjemploMasFeoDelAno(){
  mouseX = 0;
  mouseY = 0;
  fill( 255 );
}

//funcion que SI retorna valor: int, float, boolean, etc
// NATIVAS DE PROCESING: color(), random(), dist(), map(), etc
// REFLEXION tp3: ni idea, hay que ingeniarselas
int suma( int a, int b ) {
  int resultado = a + b;
  return resultado;
}

boolean estoyEnLaMitadDerechaDeLaPantallaConElMouse() {
  return mouseX > width/2;
}

boolean botonCircularPresionado( float x, float y, float radio, float mx, float my ) {
  boolean resultado = false;
  if ( mousePressed ) {
    if ( dist( x, y, mx, my) < radio ) {
      resultado = true;
    } else {
      resultado = false;
    }
  }
  return resultado;
}
