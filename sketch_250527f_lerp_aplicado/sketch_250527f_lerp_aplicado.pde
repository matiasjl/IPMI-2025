//lerp x gpt

float x;         // posición actual
float targetX;   // posición objetivo

void setup() {
  size(800, 400);
  x = 0;
  targetX = width;
}

void draw() {
  background(240);

  // Interpolación lineal: x se acerca a targetX
  x = lerp(x, targetX, 0.05);  // 0.05 es la "suavidad" del movimiento

  ellipse(x, height/2, 50, 50);  // dibuja el círculo
}
