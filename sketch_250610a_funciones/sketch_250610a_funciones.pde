// ejemplos con funcionessssss

// asi entregan video como comentario:
// https://www.youtube.com/watch?v=fQsBzrqd0t8

void setup(){
  size(500, 500 );
}

void draw(){
  //funciones matematicas > SI devuelven valor  
  if( estoyEnLaMitadDerechaDeLaPantallaConElMouse() ){
    background( 127 );  //gris
  }else{  
    background( 255 );  //blanco
  }
  
  //funciones booleana > SI devuelven valor, true or false
  if( botonCircularPresionado( width/2, height/2, 50, mouseX, mouseY ) ){
    fill( random( 255 ), 0 , 0 );
  }
  
  //funciones de dibujo > NO devuelven valor
  rectCircle( width/2, mouseY, 50 );
  rectCircle( mouseX, height/2, 50 );
  
  //funciones de dibujo > NO devuelven valor
  dibujarBotonCircular( width/2, height/2, 50 );
  
  //funciones matematicas > SI devuelven valor
  int r = suma( 10, 15 );
  println( r );
  
  //BONUS-TIP
  //asigno posiciones aleatorias al mouse cada 1 segundo
  //if( frameCount%60 == 0 ){
  //  mouseX = int( random( width ) );
  //  mouseY = int( random( height ) );
  //}
}

void keyPressed(){
  if( key == ' ' )
    reiniciarElEjemploMasFeoDelAno();
}
