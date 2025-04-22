
void setup(){
  size(500, 255);
  textSize( 24 );
  
  frameRate(30);  //fuerzo al frameRate en 30 con la funcion del mismo nombre
}

void draw(){
  //background( 0 );
  background( mouseY );  //aplicar una variable donde haya un numero
  
  //nueva funcion para escribir en pantalla
  //text( contenido, posX, posY );
  //entre comillas es cadena de caracteres
  //con + concateno entre varios textos
  text( "mX: " + mouseX, 50, 50 );
  text( "mY: " + mouseY, 50, 80 );
  //
  text( "w: " + width, 50, 130 );
  text( "h: " + height, 50, 160 );
  //
  text( "fCount: " + frameCount + " / " + frameCount/30 + " seg", 50, 210 );
  text( "fRate: " + frameRate, 50, 240 );
  
  //funcion para imprimir en la consola = zona negra de Processing
  println( mouseX );
}
