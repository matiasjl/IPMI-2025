// funciones de dibujo
// ellipse(x, y, ancho, alto );
// circle(x, y, diametro );
// rect(x, y, ancho, alto );
// triangle( x1, y1, x2, y2, x3, y3 );
// line( x1, y1, x2, y2);

void setup(){
  size(800, 400 );
}

void draw(){
  background( 0, 50, 255 );

  //mi foto (ahora pleno negro)
  fill( 0 );
  noStroke();  //dato: las propiedades de las primitivas son hereditarias, cuidado!
  rect( 0, 0, 400, 400 );
  
  //dibujo: sol
  fill( 238, 245, 47 );  //amarillo huevo, tip: herramientas > selector de color
  strokeWeight( 5 );
  circle( 100+400, 100, 100 );  //tip: sumar 400 en X corre la figura hacia la derecha
  
  
  
  
  
  //trucaso para coordenadas
  println("X: " + mouseX + " ~ Y: " + mouseY);
  
  // linea divisoria
  line( width/2, 0, width/2, height );
}
