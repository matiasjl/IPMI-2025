// dist, ejemplo practico en ciclo for

void setup(){
  size( 700, 700 );
  noFill();
  strokeWeight( 5 );
}

void draw(){
  background ( 255 );
  
  for( int i = 0 ; i < 10 ; i++ ){
    //strokeWeight( i*2 );
    //circle( width/2, height/2, i*50 );
    
    //mido la distancia al eje de coordenadas para modificar el grosor
    float d = dist( i*50, i*50, 0, 0 );
    println( i + ": " + d );
    strokeWeight( d/10 );
    
    //evaluo si el mouse esta dentro del circulo y, en caso positivo, lo pinto de rojo
    if( dist( i*50, i*50, mouseX, mouseY ) < i*50/2 ){
      fill( 200, 0, 0, 100 );
    }else{
      noFill();  //sin relleno
    }
    
    //dibujo
    stroke( 0, 100 );
    circle( i*50, i*50, i*50 );
  }
  
  //noLoop();  // frena el ciclo draw
}
