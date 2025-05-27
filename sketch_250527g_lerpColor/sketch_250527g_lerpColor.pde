//lerpColor( color1, color2, rangoNormalizado)

color c1, c2;  //declaro dos variables del mismo tipo en una sola linea
float contador = 0 ;

void setup(){
  size( 500, 500 );
  
  c1 = color( 255, 0, 0 );  //rojo
  c2 = color( 0, 0, 255 );  //azul
}

void draw(){
  contador += 0.001;
  println( contador );
  background( lerpColor( c1, c2, contador ) );
}
