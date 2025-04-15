// propiedades de dibujo
// noFill();  // sin relleno
// fill( gray );  //color de relleno, gris
// fill( r, g, b );  //color de relleno, con transparencia
// fill( r, g, b, a );  //color de relleno, rgb
// stroke(r, g, b );  //color del borde
// strokeWeight ( i );  // grosor del borde
// rectMode(): modifica como toma los paramtros el rect()
// ellipseMode(): modifica como toma los paramtros el ellipse()

void setup() {
  size(800, 400 );
}

void draw() {
  background( 0, 127, 255 );  //pinta el fondo del sketck

  //mi foto (ahora pleno negro)
  fill( 0 );
  noStroke();  //dato: las propiedades de las primitivas son hereditarias, cuidado!
  rect( 0, 0, 400, 400 );

  //dibujo: sol
  fill( 238, 245, 47 );  //amarillo huevo, tip: herramientas > selector de color
  strokeWeight( 5 );
  circle( 100+400, 100, 100 );  //tip: sumar 400 en X corre la figura hacia la derecha

  //dibujo: pasto
  noStroke();  //sin borde
  fill( 0, 127, 0 );
  rect( 400, 300, 800, 100 );

  //dibujo: arbol
  fill( 214, 139, 26 );  //#D68B1A
  rectMode( CORNERS );  //rectangulo desde sus esquinas
  //rect( x1, y1, x2, y2 );
  rect( 400+300, 220, 400+350, 330 );
  rectMode( CORNER );

  //dibujo: arbol/hojas
  fill( 0, 200, 0 , 150 ); //4to parametro = transparencia
  circle( 400+300, 220, 100 );
  circle( 400+350, 220, 70 );
  circle( 400+330, 170, 120 );

  //trucaso para coordenadas
  println("X: " + mouseX + " ~ Y: " + mouseY);

  // linea divisoria
  line( width/2, 0, width/2, height );
}
