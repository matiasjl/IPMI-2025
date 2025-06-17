float radioFijo = 0;
float anguloAutomatico = 0;
float centroX;
float centroY;

// Posición del punto verde
float puntoX, puntoY;

void setup() {
  size(1200, 800);
  centroX = width / 2;
  centroY = height / 2;
}

void draw() {
  background(30);
  CuadroInformativo();
  
  // Ejes de referencia
  push();
  stroke(100);
  strokeWeight(5);
  line(centroX - 50, centroY, centroX + 50, centroY);
  line(centroX, centroY - 50, centroX, centroY + 50);
  pop();



  if (keyPressed && key == ' ') {
    // Modo automático mientras se mantiene ESPACIO
    if (radioFijo == 0) { // Primera vez que se presiona
      float deltaX = mouseX - centroX;
      float deltaY = mouseY - centroY;
      radioFijo = sqrt(deltaX * deltaX + deltaY * deltaY);
      anguloAutomatico = atan2(deltaY, deltaX);
    }
    puntoX = centroX + cos(anguloAutomatico) * radioFijo;
    puntoY = centroY + sin(anguloAutomatico) * radioFijo;
    anguloAutomatico += 0.05;
  } else {
    // Modo manual
    radioFijo = 0; // Reset para próxima vez
    puntoX = mouseX;
    puntoY = mouseY;
  }



  // Dibujar línea y puntos
  stroke(100, 150, 255);
  strokeWeight(2);
  line(centroX, centroY, puntoX, puntoY);

  fill(255, 100, 100);
  noStroke();
  ellipse(centroX, centroY, 30, 30);

  fill(100, 255, 100);
  ellipse(puntoX, puntoY, 24, 24);


  
}





void CuadroInformativo() {
  // Calcular valores para mostrar
  float deltaX = puntoX - centroX;
  float deltaY = puntoY - centroY;
  float angulo = atan2(deltaY, deltaX);
  float anguloGrados = degrees(angulo);
  float distancia = sqrt(deltaX * deltaX + deltaY * deltaY);

  // Información
  fill(0, 0, 0, 180);
  stroke(255);
  rect(30, 30, 480, 240);

  fill(255, 255, 100);
  textSize(22);
  text("COORDENADAS POLARES:", 50, 65);
  fill(255);
  textSize(18);
  text("Angulo: " + nf(anguloGrados, 1, 1) + "°", 70, 95);
  text("Radio: " + nf(distancia, 1, 1) + " px", 70, 125);

  fill(255, 255, 100);
  textSize(22);
  text("COORDENADAS RECTANGULARES:", 50, 165);
  fill(255);
  textSize(18);
  text("X: " + nf(deltaX, 1, 1), 70, 195);
  text("Y: " + nf(deltaY, 1, 1), 70, 225);

  fill(150);
  textSize(16);
  text("Mantén ESPACIO para rotación automática", 70, 250);
}
