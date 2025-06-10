//ejemplo por DIEGO

int posX = 50;

void setup() {
  size(400, 400);
  textSize(30);
}
void draw() {
  background(255);
  push();
  rotate(radians(45));
  rect(0, 0, 100, 100);
  circle(0, 0, 20);
  pop();

  push();
  translate(200, 100);
  rotate(radians(-frameCount));
  //rotate(radians(45));
  rectMode(CENTER);
  rect(0, 0, 100, 100);
  ellipse(150, 0, 40, 40); // satélite
  circle(0, 0, 20);
  pop();


  push();
  translate(posX, 200);
  fill(255);
  rect(0, 0, 200, 100);
  fill(0);
  text("Tocar boton", 20, 50); // el botón no hace nada aún
  circle(0, 0, 20);
  if (posX>width) {
    posX=0;
  }
  posX++;
  pop();
}
