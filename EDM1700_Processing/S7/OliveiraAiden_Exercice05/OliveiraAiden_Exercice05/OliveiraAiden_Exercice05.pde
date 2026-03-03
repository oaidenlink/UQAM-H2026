/*
 * Titre: EDM1700 Exercice 5: "Oiseaux de nuit"
 * Auteur.trice: Aiden Oliveira
 * Version: 1.0
 * Instructions:
 * Notes:
 */

// VARIABLES - - - - - - - - - - - - - - - - - - - - - - - - - - - -
color crowCorps = #0E0221;
color crowCorpsLight = #21164D;
color crowYeux = #CF84ED;
color crowBec = #6F5A6C;

int posCrowCorps = 15;

// SETUP - - - - - - - - - - - - - - - - - - - - - - - - - - - -
void setup() {
  size(800, 600);
  background(#C9C9C9);
}

// DRAW / FONCTIONS - - - - - - - - - - - - - - - - - - - - - - - - - - - -
void draw() {
  drawCrow(width/2, height/2, 60, posCrowCorps, 35, 10);
  
  drawCrow(width/2+100, height/2, 120, posCrowCorps*2, 70, 10);
  println(width/2);
  
}

void drawCrow(int x, int y, int w, int h, int size, int eyes) {
  pushMatrix();
    drawBody(x, y-h, y+h);
    drawChin(x, y, size, w);
    drawEyes(x, y, eyes);
    drawBeak(x, y, w);
    drawTail(x, y, x/20, x/10, 15);
  popMatrix();
}

void drawBody(int x, int yTop, int yBot) {
  stroke(crowCorps);
  strokeWeight(70);
  line(x, yTop, x, yBot); // Body
  noStroke();
}

void drawChin(float w, float h, float size, float arc) {
  fill(crowCorpsLight);
  circle(w-posCrowCorps, h-posCrowCorps, size); // Left eye dome
  circle(w+posCrowCorps, h-posCrowCorps, size); // right eye dome
  arc(w, h-posCrowCorps, arc, arc+posCrowCorps, 0, PI); // Chin
}

void drawEyes(float x, float y, float size) {
  fill(crowYeux);
  circle(x-posCrowCorps, y-posCrowCorps, size); // Left eye
  circle(x+posCrowCorps, y-posCrowCorps, size); // Right eye
}

void drawBeak(int w, int h, int arc) {
  rectMode(CENTER);
  fill(crowBec);
  arc(w, h-10, arc/5, arc/2+posCrowCorps, 0, PI); // Chin
}

void drawTail(int x, int y, int w, int h, int rond) {
  fill(crowCorps);
  rect(x, y+posCrowCorps*3, w, h, 15);
  rect(x-posCrowCorps, y+posCrowCorps*3, w, h-10, rond);
  rect(x+posCrowCorps, y+posCrowCorps*3, w, h-10, rond);
}
