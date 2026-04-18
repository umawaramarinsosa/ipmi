PImage miImagen;

void setup (){
   size (800,400) ;
   miImagen = loadImage("escultura1.jpeg");
}

void draw (){
  background(000);
  image(miImagen, 0, 0, 400, 400);
  
  textSize(30);
  text(400+mouseX + " - " + mouseY, mouseX, mouseY);
  // torso 
  fill(#DBA539);
  noStroke();
ellipse(467,216,40,80);
ellipse(542,216,40,80);
ellipse(499,82,28,67);
ellipse(503,111,105,30);
  rect(466, 100, 73, 103);

//piernas

beginShape();
vertex(523, 230);
vertex(562, 230);
vertex(543, 277);
vertex(516, 281);
endShape(CLOSE);

beginShape();
vertex(452, 210);
vertex(480, 211);
vertex(500, 275);
vertex(467, 279);
endShape(CLOSE);

ellipse(486, 312, 38, 100);
ellipse(528, 312, 30, 100);
rect(475, 364, 27, 30);
rect(515, 364, 27, 30);
ellipse(473, 379, 4, 8);
ellipse(544, 379, 4, 8);

 //sombras
   fill(#B78E3D);
  noStroke();
 ellipse(502, 96, 31, 62);
 ellipse(463, 143, 40, 68);
  ellipse(503, 167, 97, 32); 
  triangle(466,200,543,200,508,265);
  ellipse(486, 312, 38, 60);
ellipse(528, 312, 30, 60);
   fill(#CB972D);
  rect(466, 100, 73, 93);
     fill(#AF832A);
  ellipse(505, 203, 70, 36);

//triangulos

  stroke(0);
  strokeWeight(2);
   fill(#DBA539);
triangle(479,49,520,49,509,70);



    // torso capa 2
 fill(#DBA539);
  noStroke();
ellipse(500, 36,46,40);
 fill(#FFF2D8);
ellipse(505, 36,22,30);
 fill(#FFFFF0);
 ellipse(508, 24,22,10);
//brazos
 stroke(#AF7D17);
  strokeWeight(2);
   fill(#DBA539);
ellipse(453, 143, 20, 68);
ellipse(549, 142, 20, 60);

 ellipse(503, 167, 97, 22);
 line(507, 152, 507, 182);
 fill(#FFFFF0);
   noStroke();
 ellipse(503, 157, 37, 10);
}
