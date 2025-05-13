//color bg = color(0);
  
void setup(){
  size( 500, 500 );
  colorMode( HSB, 360, 100, 100 );
  rectMode( CENTER );  // rect se comporta como circle respecto a su coordenada de origen
  //ellipseMode( CORNER );  // ellipse se comporta como rect

  background( 360 );
  //frameRate( 5 );
}

void draw(){
  //background(bg);
  
  
  line( pmouseX, pmouseY, mouseX, mouseY ); 
  
  // dibujo mis botones en pantalla
  fill( 60, 100, 100 );
  rect( 100, 400, 50, 50 );
  fill( 180, 100, 100 );
  rect( 200, 400, 50, 50 );
  fill( 300, 100, 100 );
  rect( 300, 400, 50, 50 );
  fill( 0 );
  circle( 400, 400, 50 );
  
  
  if( mousePressed ){  //se ejecuta en el draw, es decir todo el tiempo
  
  }
}

void mousePressed(){  //se ejecuta al presionar el mouse
  //bg = color( random(360), 100, 100 );
}

void keyPressed(){
  background( 360 );
}
