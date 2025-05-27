// dist( x1, y1, x2, y2 );

void setup(){
  size( 100, 100 );
  textSize( 40 );
  textAlign( CENTER, CENTER );
  
  float d = dist( 0, 0, 100, 0 );  // variable local temporal
  println( d );  // imprimo en consola el resultado
}

void draw(){
  background( 200 );
  
  line( 0, 0, mouseX, mouseY );
  float d = dist( 0, 0, mouseX, mouseY );
  text( d, width/2, height/2 );

}
