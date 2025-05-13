//declaro mis variables
color colorLapiz;
int grosorLapiz;

void setup() {
  size( 500, 500 );
  colorMode( HSB, 360, 100, 100 );
  //rectMode( CENTER );  // rect se comporta como circle respecto a su coordenada de origen
  //ellipseMode( CORNER );  // ellipse se comporta como rect

  //frameRate( 5 );

  //inicializo mis variables
  background( 360 );
  colorLapiz = color ( 0 );
  grosorLapiz = 1;
}

void draw() {
  //background(bg);

  // 1) dibujo mis botones en pantalla
  fill( 60, 100, 100 );
  stroke( 0 );
  strokeWeight( 1 );
  rect( 100, 400, 50, 50 );
  fill( 180, 100, 100 );
  rect( 200, 400, 50, 50 );
  fill( 300, 100, 100 );
  rect( 300, 400, 50, 50 );
  fill( 0 );
  circle( 425, 425, 50 );


  if ( mousePressed ) {  //se ejecuta en el draw, es decir todo el tiempo
  }
}

//2) programo mis botones dentro del evento del mouse
void mousePressed() {  //se ejecuta al presionar el mouse

  //boton cuadrado amarillo
  //rect( 100, 400, 50, 50 );
  if ( mouseX > 100 ) {
    if ( mouseX < 100+50 ) {
      if ( mouseY > 400 ) {
        if ( mouseY < 400+50 ) {
          colorLapiz = color( 60, 100, 100 );
        }
      }
    }
  }

  //boton cuadrado cyan
  //rect( 200, 400, 50, 50 );
  // && = AND, me permite SUMAR condiciones en una misma linea condicional
  if ( mouseX > 200 && mouseX < 200+50 && mouseY > 400 && mouseY < 400+50 ) {
    colorLapiz = color( 180, 100, 100 );
  }
  
  //boton circular grosor
  //circle( 425, 425, 50 );
  if( dist( mouseX, mouseY, 425, 425 ) <= 50/2 ){
    grosorLapiz++;  //suma 1 a la variable
  }
  
}

void keyPressed() {
  //reiniciar: volver las variables a valor inicial
  // || = OR, si se cumple una de las dos condiciones se ejecuta el if
  if ( key == 'r' || key == 'R' ) {
    background( 360 );
    colorLapiz = color ( 0 );
    grosorLapiz = 1;
  }
}

void mouseDragged() {
  if ( mouseY < 350 ) {  //zona cuadrada c
    //aplico mis variables a mi lapiz (line)
    strokeWeight( grosorLapiz );
    stroke( colorLapiz );
    line( pmouseX, pmouseY, mouseX, mouseY );
  }
}
