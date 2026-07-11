void funcion1() {
  pushMatrix();
  translate(400, 0);
  scale(10.0/7.0);
  translate(-400, 0);

  pushMatrix();
  //CAPA1
  translate(410, 10);
  rotate(radians(anguloRotacion));
  scale(escala);

  fill(150);
  rect(0, 0, width, height);

  for (int x = 0; x < 14; x++) {
    for (int y = 0; y < 14; y++) {
      float distancia = dist(x*20, y*20, mouseX-410, mouseY-10);
      float diametroFinal = calcularDiametro(distancia, 20);

      if (diametroFinal > 12) {
        dibujarCirculo(x*20, y*20, diametroFinal, color(0));
      } else {
        dibujarCirculo(x*20, y*20, diametroFinal, colorAnillo);
      }
    }
  }
  popMatrix();

  pushMatrix();
  //CAPA2
  translate(410, 10);
  for (int x=0; x< 14; x++) {
    fill(255);
    ellipse(x*20, 0, x+7, x+7);
  }
  popMatrix();

  pushMatrix();
  //CAPA3
  translate(410, 10);
  for (int x=0; x< 14; x++) {
    fill(255);
    ellipse(0, x*20, x+7, x+7);
  }
  popMatrix();

  pushMatrix();
  //CAPA4
  translate(410, 270);
  for (int x=0; x< 14; x++) {
    fill(255);
    ellipse(x*20, 0, 20-x, 20-x);
  }
  popMatrix();

  pushMatrix();
  //CAPA5
  translate(670, 10);
  for (int x=0; x< 14; x++) {
    fill(255);
    ellipse(0, x*20, 20-x, 20-x);
  }
  popMatrix();

  pushMatrix();
  //CAPA6
  translate(430, 30);
  for (int x=0; x< 12; x++) {
    fill(255);
    ellipse(x*20, 0, x+7, x+7);
  }
  popMatrix();

  pushMatrix();
  //CAPA7
  translate(430, 30);
  for (int y=0; y< 12; y++) {
    fill(255);
    ellipse(0, y*20, y+7, y+7);
  }
  popMatrix();

  pushMatrix();
  //CAPA8
  translate(430, 250);
  for (int x=0; x< 12; x++) {
    fill(255);
    ellipse(x*20, 0, 18-x, 18-x);
  }
  popMatrix();

  pushMatrix();
  //CAPA9
  translate(650, 30);
  for (int y=0; y< 12; y++) {
    fill(255);
    ellipse(0, y*20, 18-y, 18-y);
  }
  popMatrix();

  pushMatrix();
  //CAPA10
  translate(450, 50);
  for (int x=0; x< 12; x++) {
    fill(255);
    ellipse(x*20, 0, x+7, x+7);
  }
  popMatrix();

  pushMatrix();
  //CAPA11
  translate(450, 70);
  for (int y=0; y<10; y++) {
    fill(255);
    ellipse(0, y*20, y+7, y+7);
  }
  popMatrix();

  pushMatrix();
  //CAPA12
  translate(470, 230);
  for (int x=0; x<10; x++) {
    fill(255);
    ellipse(x*20, 0, 15-x, 15-x);
  }
  popMatrix();

  pushMatrix();
  //CAPA13
  translate(630, 70);
  for (int y=0; y<10; y++) {
    fill(255);
    ellipse(0, y*20, y-15, y-15);
  }
  popMatrix();

  pushMatrix();
  //CAPA14
  translate(470, 70);
  for (int x=0; x<10; x++) {
    fill(255);
    ellipse(x*20, 0, x+7, x+7);
  }
  popMatrix();

  pushMatrix();
  //CAPA15
  translate(470, 90);
  for (int y=0; y<10; y++) {
    fill(255);
    ellipse(0, y*20, y+7, y+7);
  }
  popMatrix();

  pushMatrix();
  //CAPA16
  translate(490, 210);
  for (int x=0; x<7; x++) {
    fill(255);
    ellipse(x*20, 0, 15-x, 15-x);
  }
  popMatrix();

  pushMatrix();
  //CAPA17
  translate(610, 90);
  for (int y=0; y<6; y++) {
    fill(255);
    ellipse(0, y*20, 13-y, 13-y);
  }
  popMatrix();

  pushMatrix();
  //CAPA18
  translate(490, 90);
  for (int x=0; x<6; x++) {
    fill(255);
    ellipse(x*20, 0, x+7, x+7);
  }
  popMatrix();

  pushMatrix();
  //CAPA1
  translate(490, 110);
  for (int y=0; y<5; y++) {
    fill(255);
    ellipse(0, y*20, y+7, y+7);
  }
  popMatrix();

  pushMatrix();
  //CAPA20
  translate(410, 110);
  for (int x=0; x<5; x++) {
    fill(255);
    ellipse(x*20, 0, 11-x, 11-x);
  }
  popMatrix();

  pushMatrix();
  //CAPA21
  translate(590, 110);
  for (int y=0; y<4; y++) {
    fill(255);
    ellipse(0, y*20, 11-y, 11-y);
  }
  popMatrix();

  pushMatrix();
  //CAPA22
  translate(510, 190);
  for (int x=0; x<5; x++) {
    fill(255);
    ellipse(x*20, 0, 11-x, 11-x);
  }
  popMatrix();

  pushMatrix();
  //CAA23
  translate(510, 110);
  for (int x=0; x< 4; x++) {
    fill(255);
    ellipse(x*20, 0, 7+x, 7+x);
  }
  popMatrix();

  pushMatrix();
  //CAPA24
  translate(510, 130);
  for (int y=0; y< 3; y++) {
    fill(255);
    ellipse(0, y*20, y+7, y+7);
  }
  popMatrix();

  pushMatrix();
  //CAPA25
  translate(530, 170);
  for (int x=0; x< 3; x++) {
    fill(255);
    ellipse(x*20, 0, 9-x, 9-x);
  }
  popMatrix();

  pushMatrix();
  //CAPA26
  translate(570, 130);
  for (int y=0; y< 2; y++) {
    fill(255);
    ellipse(0, y*20, y+8, y+8);
  }
  popMatrix();

  pushMatrix();
  //CAPA27
  translate(510, 130);
  for (int x=0; x<2; x++) {
    for (int y=0; y<2; y++) {
      ellipse(x*20, y*20, 6, 6);
    }
  }
  popMatrix();

  popMatrix();
}

void dibujarCirculo(float x, float y, float diam, color c) {
  fill(c);
  ellipse(x, y, diam, diam);
}

float calcularDiametro(float distancia, float base) {
  float d = map(distancia, 0, 400, base, 5);
  return d;
}
