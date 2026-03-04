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
  drawCrow(width/2, height/2, 60, 100, 35, 10, posCrowCorps, 1.5);

  drawCrow(width/2-200, height/2, 120, 200, 70, 20, posCrowCorps*2, 1);
}

void drawCrow(int x, int y, int w, int h, int size, int eyes, int posCrowBody, float wing) {
  drawBody(x, y, h, w, wing);
  drawChin(x, y, size, w, posCrowBody);
  drawEyes(x, y, eyes, posCrowBody);
  drawBeak(x, y, w, posCrowBody);
  drawLegs(x, y, w/5, h/2, 15, posCrowBody);
}

void drawBody(int x, int y, int h, int w, float wing) {
  rectMode(CENTER);
  noStroke();
  fill(crowCorps);
  rect(x, y, w, h, 100);
  circle(x-20, y+15, w/wing);
  circle(x+20, y+15, w/wing);
}

void drawChin(float x, float y, float size, float w, int posCrowBody) {
  fill(crowCorpsLight);
  circle(x-posCrowBody, y-posCrowBody, size); // Left eye dome
  circle(x+posCrowBody, y-posCrowBody, size); // right eye dome
  circle(x, y-10, w/2);
  //arc(x, y-posCrowCorps, w, w+posCrowCorps, 0, PI); // Chin
}

void drawEyes(float x, float y, float eyes, int posCrowBody) {
  fill(crowYeux);
  circle(x-posCrowBody, y-posCrowBody, eyes); // Left eye
  circle(x+posCrowBody, y-posCrowBody, eyes); // Right eye
  fill(0);
  circle(x-posCrowBody, y-posCrowBody, eyes/1.5); // Left eye
  circle(x+posCrowBody, y-posCrowBody, eyes/1.5); // Right eye
}

void drawBeak(int x, int y, int w, int posCrowBody) {
  fill(crowBec);
  arc(x, y-10, w/5, w/2+posCrowBody, 0, PI); // Chin
}

void drawLegs(int x, int y, int w, int h, int rond, int posCrowBody) {
  fill(crowCorps);
  rect(x-posCrowBody, y+posCrowBody*2, w, h-10, rond);
  rect(x+posCrowBody, y+posCrowBody*2, w, h-10, rond);
}
