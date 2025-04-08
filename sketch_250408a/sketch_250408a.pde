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
  strokeWeight( 1 );
  rect( 18+400, 160, 340, 80, 10 );

  //aca
  //sigo
  //dibujando
  //mi objeto favorito




  // linea divsoria de la pantalla en dos
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
