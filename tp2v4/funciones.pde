void pantallaInicio() {
  background(20);

  fill(255);
  textFont(fuenteTitulo);
  textSize(40);
  text("EL CUERVO", width/2, 150);

  fill(150, 0, 0);
  textFont(fuenteTexto);
  textSize(22);
  text("Edgar Allan Poe", width/2, 200);

  dibujarBoton(botonX, botonY, botonAncho, botonAlto, "Comenzar");
}

void pantallaFinal() {
  background(20);

  fill(255);
  textFont(fuenteTitulo);
  textSize(36);
  text("FIN", width/2, 150);

  fill(200);
  textFont(fuenteTexto);
  textSize(20);
  text("Gracias por ver la presentacion", width/2, 210);

  dibujarBoton(botonX, botonY, botonAncho, botonAlto, "Reiniciar");
}

void mostrarPantallaActual() {
  if (pantalla == 0) {
    pantalla0(alphaTexto, desplazamiento);
  } else if (pantalla == 1) {
    pantalla1(alphaTexto, desplazamiento);
  } else if (pantalla == 2) {
    pantalla2(alphaTexto, desplazamiento);
  } else if (pantalla == 3) {
    pantalla3(alphaTexto, desplazamiento);
  } else if (pantalla == 4) {
    pantalla4(alphaTexto, desplazamiento);
  } else if (pantalla == 5) {
    pantalla5(alphaTexto, desplazamiento);
  }
}

void pantalla0(float alpha, float desp) {
  image(imagenes[0], 0, 0, width, height);

  fill(0, 170);
  rect(0, 0, width, height);

  fill(255, alpha);
  textFont(fuenteTitulo);
  textSize(44);
  text("EL CUERVO", width/2, 150 - desp);

  fill(150, 0, 0, alpha);
  textFont(fuenteTexto);
  textSize(28);
  text("Edgar Allan Poe", width/2, 210);

  fill(255, alpha);
  textSize(20);
  text("Presentacion automatica", width/2, 390);
}

void pantalla1(float alpha, float desp) {
  image(imagenes[1], 0, 0, width, height);

  fill(0, 180);
  rect(40, 40, 560, 390);

  fill(255, alpha);
  textFont(fuenteTitulo);
  textSize(28);
  text("Quien fue Poe", width/2, 80 - desp);

  fill(255, alpha);
  textFont(fuenteTexto);
  textSize(22);
  text(
    "Edgar Allan Poe fue un escritor\nestadounidense nacido en 1809.\n\nEs conocido por sus cuentos\nde terror y misterio.\n\nMurio en 1849.",
    width/2, 220
  );

  noStroke();
  fill(255, 150, 0);
  ellipse(90, 390 + random(-2, 2), 18, 30);
  ellipse(550, 390 + random(-2, 2), 18, 30);
}

void pantalla2(float alpha, float desp) {
  image(imagenes[2], 0, 0, width, height);

  fill(0, 180);
  rect(35, 35, 570, 400);

  fill(255, alpha);
  textFont(fuenteTitulo);
  textSize(30);
  text("De que trata", width/2, 80 - desp);

  fill(255, alpha);
  textFont(fuenteTexto);
  textSize(24);
  text(
    "El protagonista esta triste\npor la muerte de Leonora.\n\nUna noche aparece un cuervo\nque repite 'Nunca mas'.\n\nEl hombre empieza a perder\nla cordura.",
    width/2, 220
  );

  if (frameCount % 50 < 25 && alpha > 200) {
    fill(180, 0, 0);
    textSize(36);
    text("NUNCA MAS", width/2, 390);
  }
}

void pantalla3(float alpha, float desp) {
  image(imagenes[3], 0, 0, width, height);

  fill(0, 190);
  rect(40, 40, 560, 390);

  fill(255, alpha);
  textFont(fuenteTitulo);
  textSize(30);
  text("Temas principales", width/2, 80 - desp);

  fill(255, alpha);
  textFont(fuenteTexto);
  textSize(24);
  text(
    "- tristeza\n- muerte\n- soledad\n- locura\n- misterio",
    width/2, 220
  );
}

void pantalla4(float alpha, float desp) {
  image(imagenes[4], 0, 0, width, height);

  fill(0, 180);
  rect(40, 50, 560, 340);

  fill(255, alpha);
  textFont(fuenteTitulo);
  textSize(32);
  text("Conclusion", width/2, 90 - desp);

  fill(255, alpha);
  textFont(fuenteTexto);
  textSize(22);
  text(
    "El cuervo es una obra muy\nimportante del terror gotico.\n\nHabla sobre la tristeza,\nla desesperacion y la locura.",
    width/2, 220
  );

  fill(180, alpha);
  ellipse(540, 80, 60, 60);
}

void pantalla5(float alpha, float desp) {
  image(imagenes[2], 0, 0, width, height);

  fill(0, 185);
  rect(35, 35, 570, 400);

  fill(255, alpha);
  textFont(fuenteTitulo);
  textSize(28);
  text("Importancia de la obra", width/2, 80 - desp);

  fill(255, alpha);
  textFont(fuenteTexto);
  textSize(22);
  text(
    "El cuervo no solo es un poema.\n\nTambien funciona como una historia corta\ncon narrativa y tension emocional.\n\nRevoluciono la literatura gotica porque\nmezcla poesia con relato psicologico,\nalgo poco comun en su epoca.",
    width/2, 220
  );

  if ((frameCount % 60 < 30) && (alpha > 200 || presentacionIniciada)) {
    fill(180, 0, 0);
    textSize(26);
    text("INFLUENCIA LITERARIA", width/2, 390);
  }
}

float calcularAlpha(float valorActual) {
  float nuevoValor = valorActual + 5;

  if (nuevoValor > 255) {
    nuevoValor = 255;
  }

  return nuevoValor;
}

boolean estaDentroBoton(float mx, float my, float bx, float by, float bw, float bh) {
  if (mx > bx && mx < bx + bw && my > by && my < by + bh) {
    return true;
  } else {
    return false;
  }
}

void dibujarBoton(float x, float y, float w, float h, String etiqueta) {
  boolean hover = estaDentroBoton(mouseX, mouseY, x, y, w, h);

  if (hover) {
    fill(200, 0, 0);
  } else {
    fill(120, 0, 0);
  }
  rect(x, y, w, h, 10);

  fill(255);
  textFont(fuenteTexto);
  textSize(20);
  text(etiqueta, x + w/2, y + h/2);
}
