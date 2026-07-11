PImage[] imagenes = new PImage[5];
PFont fuenteTitulo;
PFont fuenteTexto;

int pantalla = 0;
int totalPantallas = 6;
int duracionPantalla = 6000;
int tiempoInicioPantalla = 0;

boolean presentacionIniciada = false;
boolean presentacionTerminada = false;

float alphaTexto = 0;
float desplazamiento = 40;

int botonX = 220;
int botonY = 400;
int botonAncho = 200;
int botonAlto = 50;

void setup() {
  size(640, 480);

  imagenes[0] = loadImage("img1.jpeg");
  imagenes[1] = loadImage("img2.jpeg");
  imagenes[2] = loadImage("img3.jpeg");
  imagenes[3] = loadImage("img4.jpeg");
  imagenes[4] = loadImage("img5.jpeg");

  fuenteTitulo = loadFont("Papyrus-Regular-48.vlw");
  fuenteTexto = loadFont("Papyrus-Regular-48.vlw");

  textAlign(CENTER, CENTER);
}

void draw() {
  background(0);

  if (!presentacionIniciada && !presentacionTerminada) {
    pantallaInicio();
  } else if (presentacionTerminada) {
    pantallaFinal();
  } else {
    actualizarAnimacion();
    mostrarPantallaActual();
    controlarTiempo();
  }
}

void actualizarAnimacion() {
  if (alphaTexto < 255) {
    alphaTexto = calcularAlpha(alphaTexto);
  }

  if (desplazamiento > 0) {
    desplazamiento = desplazamiento - 1;
  }
}

void controlarTiempo() {
  if (millis() - tiempoInicioPantalla > duracionPantalla) {
    pantalla++;
    tiempoInicioPantalla = millis();
    alphaTexto = 0;
    desplazamiento = 40;

    if (pantalla >= totalPantallas) {
      presentacionTerminada = true;
    }
  }
}

void mousePressed() {
  if (!presentacionIniciada && !presentacionTerminada) {
    if (estaDentroBoton(mouseX, mouseY, botonX, botonY, botonAncho, botonAlto)) {
      presentacionIniciada = true;
      tiempoInicioPantalla = millis();
    }
  }
}

void mouseClicked() {
  if (presentacionTerminada) {
    if (estaDentroBoton(mouseX, mouseY, botonX, botonY, botonAncho, botonAlto)) {
      reiniciar();
    }
  }
}

void reiniciar() {
  pantalla = 0;
  presentacionIniciada = false;
  presentacionTerminada = false;
  alphaTexto = 0;
  desplazamiento = 40;
  tiempoInicioPantalla = 0;
}
