PImage imgReferencia;

float escala = 1.0;
float anguloRotacion = 0;
color colorAnillo = color(0);

float escalaOriginal = 1.0;
float anguloOriginal = 0;
color colorOriginal = color(0);

void setup() {
  size(800, 400);
  imgReferencia = loadImage("refe.jpeg");
}

void draw() {

  
  background(255);
  image(imgReferencia, 0, 0, 400, 400);
  funcion1();
}

void mousePressed() {
  escala = map(mouseX, 400, 800, 0.6, 1.4);
  colorAnillo = color(random(255), random(255), random(255));
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    reiniciar();
  } else if (key == '+') {
    anguloRotacion += 5;
  } else if (key == '-') {
    anguloRotacion -= 5;
  }
}

void reiniciar() {
  escala = escalaOriginal;
  anguloRotacion = anguloOriginal;
  colorAnillo = colorOriginal;
}
