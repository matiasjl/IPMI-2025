// ejercicio: animar texto con variables
// UPGRADE > condicionales para limitar animaciones

// variables globales se declaran fuera de las estructuras VOID
String nombre = "Matias";
char inicial = 'M';
color rojo = color(200, 0, 0, 50);
color gris = color(200);
int posXnombre = 0;

int tamTexto = 1;

void setup(){  //Evento: se ejecuta CUANDO se inicia el programa
  size( 500, 500 );
  background(0);
  textAlign( CENTER, CENTER );  //alineacion
  
  //frameRate( 5 );
}

void draw(){  //Evento: se ejecuta CUANDO se ejecuta el setup, reiteradamente 60fps
  fill( 0, 5 );
  noStroke();
  rect( 0, 0, width, height );
  
  
  // ACTUALIZO las variables
  posXnombre = posXnombre + 1;  //suma un numero a la variable = OPERACIONES MATEMATICAS HACEN ANIMACIONES
  println(posXnombre);
  
  // DIBUJO los textos, imagenes, primitivas
  
  if( tamTexto <= 150 ){  // ---------------------------------------CONDICIONAL!
    tamTexto = tamTexto + 1;  //simil frameCount, pero con variable
  }  //condiciona solo el size
  textSize( tamTexto );  // tamano
  fill( 128 );
  text( "Matias", 250, 250 );  
  //}  //condiciona todo el dibujo
  
  //textSize( 36 );
  //fill( rojo );
  //text( nombre, posXnombre, height/2 );  
}

void keyPressed(){  //Evento: se ejecuta CUANDO se toca una tecla del teclado
  if( key == 'M' ){  // ---------------------------------------CONDICIONAL!
    textSize( random(30, 90) );  // tamano
    fill( gris );
    text(inicial, mouseX, mouseY );
    //text(inicial, random(width), random(height) );
  }else{             // ---------------------------------------CONDICIONAL!
    //si la condicion es false, se ejecuta esta porcion de codigo
    //en este caso, si aprieta cualquier otra tecla que no sea la M mayuscula
    textSize( 20 );
    fill( 100 );
    text( key, random(width), random(height) );    
  }
}

void mousePressed(){
  tamTexto = 1;
}
