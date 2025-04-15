// IPMI comisión 2
// esto es un comentario :)
// hola soy un editor de texto para codigo de processing

// 1) crear una variable de la imagen (espacio en memoria RAM)
PImage miObjetoFavorito;

void setup(){  //se ejecuta una sola vez al iniciar el programa
  //funcion(param1, param2, ...);
  size( 800, 400 );  //tamano de la ventana
  background( 200 ); //color del fondo  
  
  // 2) cargar la imagen de la carpeta data
  miObjetoFavorito = loadImage("zapatilla.png");
}

void draw(){  //se ejecuta de forma ciclica X veces por segundo (FPS> Frames Per Second)
  background( 200 ); //color del fondo  

  // 3) mostrar la imagen
  image( miObjetoFavorito, 0, 50 );  //se mantiene la resolucion y aspecto original
  //image( miObjetoFavorito, 0, 0, 400, 400 );  // se deforma la resolucion y posiblemente el aspecto 
  
  //hacer mi dibujo del lado derecho de la ventana
  fill( 255 );
  strokeWeight( 1 );
  rect( 18+400, 160, 340, 80, 10 );

  //aca
  //sigo
  //dibujando
  //mi objeto favorito
  
  // enchufe #1
  stroke( 0 );  // afecta a las lineas y todos los bordes
  fill( 0 );  //afecta a los circulos
  strokeWeight( 2 );
  line(40+400, 183, 40+400, 190 );
  line(58+400, 183, 58+400, 190 );
  circle(35+400, 204, 5);
  circle(64+400, 204, 5);
  line( 35+400, 204, 40+400, 196 );
  line( 64+400, 204, 58+400, 196 );
  circle( 50+400, 204, 8 );
  line( 50+400, 214, 50+400, 222);
  
  // enchufe #2
  stroke( 0 );  // afecta a las lineas y todos los bordes
  fill( 0 );  //afecta a los circulos
  strokeWeight( 2 );
  line(40+460, 183, 40+460, 190 );
  line(58+460, 183, 58+460, 190 );
  circle(35+460, 204, 5);
  circle(64+460, 204, 5);
  line( 35+460, 204, 40+460, 196 );
  line( 64+460, 204, 58+460, 196 );
  circle( 50+460, 204, 8 );
  line( 50+460, 214, 50+460, 222);  

  // enchufe #3
  stroke( 0 );  // afecta a las lineas y todos los bordes
  fill( 0 );  //afecta a los circulos
  strokeWeight( 2 );
  line(40+520, 183, 40+520, 190 );
  line(58+520, 183, 58+520, 190 );
  circle(35+520, 204, 5);
  circle(64+520, 204, 5);
  line( 35+520, 204, 40+520, 196 );
  line( 64+520, 204, 58+520, 196 );
  circle( 50+520, 204, 8 );
  line( 50+520, 214, 50+520, 222);  
  
    // enchufe #4
  stroke( 0 );  // afecta a las lineas y todos los bordes
  fill( 0 );  //afecta a los circulos
  strokeWeight( 2 );
  line(40+580, 183, 40+580, 190 );
  line(58+580, 183, 58+580, 190 );
  circle(35+580, 204, 5);
  circle(64+580, 204, 5);
  line( 35+580, 204, 40+580, 196 );
  line( 64+580, 204, 58+580, 196 );
  circle( 50+580, 204, 8 );
  line( 50+580, 214, 50+580, 222);  
  
    // enchufe #5
  stroke( 0 );  // afecta a las lineas y todos los bordes
  fill( 0 );  //afecta a los circulos
  strokeWeight( 2 );
  line(40+640, 183, 40+640, 190 );
  line(58+640, 183, 58+640, 190 );
  circle(35+640, 204, 5);
  circle(64+640, 204, 5);
  line( 35+640, 204, 40+640, 196 );
  line( 64+640, 204, 58+640, 196 );
  circle( 50+640, 204, 8 );
  line( 50+640, 214, 50+640, 222);  
  
  // linea divsoria de la pantalla en dos
  stroke( 0 );
  strokeWeight( 10 );
  line( 400, 0, 400, 400 );
  
  //imprimo en consola las variables X e Y del mouse
  println( mouseX + " / " + mouseY );
}

void mouseMoved(){  //cruz que sigue al mouse cuando se mueve el mouse
  strokeWeight( 2 );
  line( mouseX, 0, mouseX, 400 );
  line( 0, mouseY, 800, mouseY );  
}
