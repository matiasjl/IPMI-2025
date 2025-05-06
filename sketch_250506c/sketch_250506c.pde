// LOGICA DE ESTADOS y EVENTOS con CONDICIONALES para programar las pantallas de TP2
// AGREGAMOS cambio de pantallas con las flechas del teclado + tiempo con frameCount

//creo mi variable para manejar los estados/pantallas
String estado;
int e;

void setup() {
  size( 500, 500 );
  textAlign( CENTER, CENTER );

  //asigno valor por defecto a mis variables
  estado = "pantalla-1";
  e = 1;
}

void draw() {
  // LOGICA DE ESTADOS: manejo de pantallas
  //---------------------------PANTALLA 1
  if ( e == 1 ) {
    //aqui el codigo de la pantalla 1
    background( 100, 0, 0 );  //rojo

    
    
    
    
    // LOGICA DE EVENTO: manejo del tiempo
    if( frameCount == (60*5) ){
      e = 2;  //se ejecuta un solo frame, un instante: un evento
    }
    //---------------------------PANTALLA 2
  } else if ( e == 2 ) {
    // aqui el codigo de la pantalla 2
    background( 0, 100, 0 );  //verde



    // LOGICA DE EVENTO: manejo del tiempo
    if( frameCount == (60*10) ){
      e = 3;  //se ejecuta un solo frame, un instante: un evento
    }
  //---------------------------PANTALLA 3
  } else if ( e == 3 ) {
    // aqui el codigo de la pantalla 3
    background( 0, 0, 100 );  //azul
    
    
    
    //FALTA programar el boton de reiniciar
  }
  
  //println( frameRate );
  
  //visualizo el tiempo
  textSize( 36 );
  text( int(frameCount/60), 100, 100 );  //escribo el tiempo en segundos
}

void mousePressed() {
  // aca programar el boton de reiniciar
}

void mouseReleased() {
  // e = e + 1;   //sumando uno al valor de e
  e++;            //misma expresion simplificada
  println( e );
}



void keyPressed() {  //me muevo entre pantallas
  //if ( key == 'a' ) {
  if ( keyCode == LEFT ) {
    // para pasar a pantalla anterior
    e--;
  }
  //if ( key == 'd' ) {
  if ( keyCode == RIGHT ) {
    // para pasar a pantalla siguiente
    e++;
  }
  println( e );
}
