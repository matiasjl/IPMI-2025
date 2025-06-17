/* Esto es un código mio (Diego Jiménez) del 2020, del TP2 de la materia Tecno 1
 * o sea, estaba aprendiendo, por eso verán cosas muy feas y sin sentidos, las cuales, en su mayoria moví a la pestaña "Creditos".
 *
 * Sin embargo, lo estoy rescatando para dar una clase de "Cordenadas Polares y Rectangulares"
 */

//Controles de la Nave
boolean teclaA, teclaS, teclaD, teclaW;
float anguloNave;
float anguloBala;
float distanciaBala;


void setup() {
  size(1200, 800); 
  CargarTipografias();
  CargarImagenes();
  ConfiguracionRara();
  //noCursor();
}


void draw() {
  background(36, 32, 26);
  textAlign(CENTER);

  DibujarNave();
  DibujarCreditos();
  DibujarBala();
}


void mousePressed() {
  //Reinicia la bala al presionar el mouse
  anguloBala = anguloNave;
  distanciaBala = 0;
}


void keyPressed() {
  //Parte 1 de: Logica de estado de movimiento de la nave
  if (key == 'a') teclaA = true;
  if (key == 'd') teclaD = true;
  if (key == 'w') teclaW = true;
  if (key == 's') teclaS = true;
}


void keyReleased() {
  //Parte 2 de: Logica de estado de movimiento de la nave
  if (key == 'a') teclaA = false;
  if (key == 'd') teclaD = false;
  if (key == 'w') teclaW = false;
  if (key == 's') teclaS = false;
}


//---------------------------------------------------------------------------------
//--- COORDENADAS RECTANGULARES A POLARES ---
//---------------------------------------------------------------------------------
void GirarNave() {
  //--- Formulas de: rectangulares a polares ---
  // ANGULO:
  // deltaX = px2- px1;
  // deltaY = py2- py1;
  // angulo = atan2(deltaY, deltaX);
  //
  // DISTANCIA: (no se usa en este ejemplo)
  // radio = dist(px1, px2, py1, py2);
  //
  // Visto de forma más matemática: 
  // * "deltaX" es "cateto opuesto"
  // * "deltaY" es "catetp adyacente"
  // * "radio" es "hipotenusa" o "distancia"
  //------------------------------------------------------
  //Movimiento giratorio siguiendo el mouse
  float deltaX = mouseX - px;
  float deltaY = mouseY - py;
  anguloNave = atan2(deltaY, deltaX);
}
//---------------------------------------------------------------------------------




//---------------------------------------------------------------------------------
//--- COORDENADAS POLARES A RECTANGULARES ---
//---------------------------------------------------------------------------------
void MoverBala() {
  //--- Formulas de: polares a rectangulares ---
  // x = cos(angulo) * radio;
  // y = sin(angulo) * radio;
  //
  // Si se quiere ver de forma matematica: esa "x" es igual a "cateto opuesto" que para nosotros es lo mismo que "deltaX", vease:
  // x = deltaX = cateto opuesto
  // y = deltaY = cateto adyacente
  //
  //-------------------------------------------------------
  float deltaX = cos(anguloBala) * distanciaBala;
  float deltaY = sin(anguloBala) * distanciaBala;
  x = deltaX;
  y = deltaY;
  //No hace falta crear las variables delta, podría utilizar la "x" e "y"
  //pero tendría que hacer muchos cambios (Es un código muy viejo)
  //-------------------------------------------------------

  //Aumento la distancia cada frame, o sea... velocidad
  distanciaBala+= 30;
}
//---------------------------------------------------------------------------------





void DibujarNave() {
  MoverNave();
  GirarNave();

  //Dibujar Nave
  push();
  translate(px, py);
  rotate(anguloNave + PI/2);
  imageMode(CENTER);
  opacidad3 = opacidad3 + 1.9;
  tint(255, opacidad3-700);
  image (nave, 0, 0, width*naveA, height*naveL);
  //px = mouseX;//seguimiento de la nave en Y
  //py = mouseY;//seguimiento de la nave en X
  pop();
}

void MoverNave() {
  //Movimiento con teclas
  float velocidadNave = 5;
  if (teclaA) px -= velocidadNave;
  if (teclaD) px += velocidadNave;
  if (teclaW) py -= velocidadNave;
  if (teclaS) py += velocidadNave;
}



void DibujarBala() {
  MoverBala();

  push();
  //El translate de la bala debe ser el centro de la propia bala pero relativo a la posicion de la nave
  //Por eso se suma la posicion de la nave más la posicion de la bala
  translate(px + x, py + y);
  rotate(anguloBala + PI/2);
  tint(255, opacidad3-700);

  //Dibujo bala
  imageMode(CENTER);
  image (disparo, 0, 0, width*2*naveA, height*2*naveL);
  pop();
}




void CargarTipografias() {
  font = loadFont("Candara-Light-72.vlw");
  font2 = loadFont("Candara-Light-40.vlw");
  font3 = loadFont("CenturyGothic-32.vlw");
}

void CargarImagenes() {
  nave = loadImage("nave.png");
  disparo =loadImage("disparo.png");
  disparo2 =loadImage("disparo2.png");
}
