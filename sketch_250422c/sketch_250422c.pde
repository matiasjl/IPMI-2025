// ejercicio: animar texto con variables

// variables globales se declaran fuera de las estructuras VOID
String nombre = "Matias";
char inicial = 'M';
color rojo = color(200, 0, 0, 50);
color gris = color(200);
int posXnombre = 0;

void setup(){  //Evento: se ejecuta CUANDO se inicia el programa
  size( 500, 500 );
  background(0);
  textAlign( CENTER, CENTER );  //alineacion
  
}

void draw(){  //Evento: se ejecuta CUANDO se ejecuta el setup, reiteradamente 60fps
  // ACTUALIZO las variables
  posXnombre = posXnombre + 5;  //suma un numero a la variable = OPERACIONES MATEMATICAS HACEN ANIMACIONES
  println(posXnombre);
  
  // DIBUJO los textos, imagenes, primitivas
  fill( rojo );
  textSize( 36 );  // tamano
  text( nombre, posXnombre, height/2 );  //PARA REVISAR LEGIBILIDAD
}

void keyPressed(){  //Evento: se ejecuta CUANDO se toca una tecla del teclado
  textSize( random(30, 90) );  // tamano
  fill( gris );
  text(inicial, mouseX, mouseY );
  //text(inicial, random(width), random(height) );
}
