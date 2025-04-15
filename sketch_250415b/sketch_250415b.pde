// CLASE DE COLOR
// rgb = red, green, blue... mezcla aditiva, modelo por defecto en processing
// hsb = hue, saturation, brillo... modelo para pensar los colores mas humanamente

void setup(){
  fullScreen();  //size a pantalla completa
  //size( 400, 400 );
  //colorMode( RGB );  //por defecto
  colorMode( HSB, 360, 100, 100, 100 );  //modelo hsb con escalas en 360hue, 100saturacion, 100brillo
}

void draw(){
  background( 0 );
  //IMPORTANTE: trabajo con coordenadas relativas porque no se mi size de pantalla
  
  // DIBUJO BARRAS DEGRADEZ en SATURACION
  //noStroke();
  fill( 77, 100, 100 );
  rect( 0, 0, width/5, height );
  fill( 77, 100, 80 );
  rect( width/5, 0, width/5, height );
  fill( 77, 100, 60 );
  rect( width/5*2, 0, width/5, height );
  fill( 77, 100, 40 );
  rect( width/5*3, 0, width/5, height );
  fill( 77, 100, 20 );
  rect( width/5*4, 0, width/5, height );
  
// DIBUJO CIRCULOS DEGRADEZ en BRILLO
  fill( 200, 100, 100, 50 );  
  circle( width/2, height/2, height );
  fill( 200, 80, 100, 50 );  
  circle( width/2, height/2, height/5*4 );
  fill( 200, 60, 100, 50 );  
  circle( width/2, height/2, height/5*3 );
  fill( 200, 40, 100, 50 );  
  circle( width/2, height/2, height/5*2 );
  fill( 200, 20, 100, 50 );  
  circle( width/2, height/2, height/5 );  
}
