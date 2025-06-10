//ejemplor por JOSE LUIS

int cantidad, tam;

void setup() {
  size(400, 400);
  cantidad=10;
  tam=width/cantidad;
  rectMode(CENTER);
}

void draw() {
  background(0);

  for (int i=0; i<cantidad; i++) {
    for (int j=0; j<cantidad; j++) {
      push();

      translate(i*tam+tam/2, j*tam+tam/2);
      float distancia=dist(mouseX, mouseY, i*tam+tam/2, j*tam+tam/2);
      float diagonal= dist(0, 0, width, height);
      float angulo= map(distancia, 0, diagonal, 5, 1);
      float colorR=map(distancia, 0, diagonal, 255, 50);
      noStroke();
      fill(255, 0, 255, colorR);
      rotate(radians(frameCount*angulo));
      rect(0, 0, tam, tam); // podría cambiarse el tamaño de las figuras

      pop();
    }
  }
}
