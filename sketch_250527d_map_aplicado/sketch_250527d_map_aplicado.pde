//map( valor, rango1inicio, rango1fin, rango2inicio, rango2fin );

void setup(){
  size( 600, 400 );
}

void draw(){
  background( 255 );
  
  for( int i = 1 ; i <= width ; i++ ){  // 400 veces, 400 lineas
    float m = map( i, 1, width, 255, 0 );
    
    stroke( m );  //color en escala de grisis
    line( i, 0, i, height );
  }
}
