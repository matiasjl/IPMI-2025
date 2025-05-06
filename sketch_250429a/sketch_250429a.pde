// FUNCIONES: nombre(param1, param2, ...);
// Dos grupos, dependiendo si devuelven o no un valor numerico
// - NO devuelven: fill(), circle(), text(), size(), textSize(),
// - SI devuelven: random(), color(), int(), otras matematicas
// TODO lo que dibuja en pantalla NO devuelve valor

// Dos tipos, de entorno (processing) y de usuario (programar)
// - ENTORNO son las palabras claves que se pintan de azul y llevan parametros entre parentesis
// - USUARIO las crea el programador definiendo el tipo de funcion

// PUNTO CLAVE: las funciones, como las variables, son REUTILIZABLES

void setup(){
  size(500, 500 );
  
  frameRate( 1000 );  //este programa ronda en 650fps
}

void draw(){
  //background( 100 );
  fill( 100, 20 );
  noStroke();
  rect( 0, 0, width, height );
  
  //munecoDeNieve en draw()
  fill( 255 );
  noStroke();
  circle( width/2, 100, 50 );
  circle( width/2, 150, 80 );
  circle( width/2, 200, 100 );
  
  //funcion munecoDeNieve() SIN parametros (pisa el anterior)
  munecoDeNieve();
  
  //funcion munecoDeNieve() CON parametros de POSICION
  munecoDeNieve( 400, 300 );

  //funcion munecoDeNieve() CON parametros de POSICION y TAMANO
  munecoDeNieve( 100, 300, 50 );
  munecoDeNieve( 300, 300, 20 );
  munecoDeNieve( 100, 100, 40 );
  //7mo > caso con aleatoriedad con funcion random() y funcion int()
  munecoDeNieve( int(random(width)), int(random(height)), random(20, 100) );
  
  println( frameRate );
}

void keyPressed(){
}
