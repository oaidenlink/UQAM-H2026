/*
 * Titre: EDM1700 Exercice 5: "Oiseaux de nuit"
 * Auteur.trice: Aiden Oliveira
 * Version: 1.0
 * Instructions: 
 * Notes: birb
 */

// VARIABLES - - - - - - - - - - - - - - - - - - - - - - - - - - - -
color crowCorps = #0E0221;      // couleur foncé du corps
color crowCorpsLight = #21164D; // couleur pâle du corps
color crowYeux = #CF84ED;       // couleur des yeux
color crowBec = #6F5A6C;        // couleur du bec

int posCrowCorps = 15;          // position de certains éléments du corps
boolean eyeOpen;                // bool afin de savoir si le petit oiseau a les yeux ouvert ou fermé

// SETUP - - - - - - - - - - - - - - - - - - - - - - - - - - - -
void setup() {
  size(800, 600);              // grandeur du canva
}

// DRAW - - - - - - - - - - - - - - - - - - - - - - - - - - - -
void draw() {
  background(#62C6F2);                 // couleur du fond (ciel)
  noStroke();                          // enlever les bordures
  fill(#5A4631);                       // couleur des branches (brun)
  
  // - branche de gauche -
  beginShape();                        // début de la branche gauche
    vertex(0, height/2+50);
    vertex(150, height/2+90);
    vertex(270, height/2+100);
    vertex(width/2, height/2+70);
    vertex(280, height/2+130);
    vertex(170, height/2+160);
    vertex(0, height/2+150);
  endShape();                           // fin de la branche gauche
  beginShape();                         // début de la mini branche gauche
    vertex(width/2-30, height/2+80);
    vertex(width/2+10, height/2+120);
    vertex(width/2-50, height/2+90);
  endShape();                           // fin de la mini branche gauche
  
  // - branche de droite -
  beginShape();                         // début de la branche droite
    vertex(width, 440);
    vertex(width-50, 460);
    vertex(width-150, 470);
    vertex(width-200, 430);
    vertex(width-240, 450);
    vertex(width-200, 440);
    vertex(width-170, 490);
    vertex(width-80, 500);
    vertex(width, 520);
  endShape();                            // fin de la branche droite
  
    // appelle la fonction qui dessine l'oiseau (le petit corbeau)
  drawCrow(width/2+300, height/2+100, 90, 140, 50, 15, posCrowCorps*1.5, 1.5, true, 2);
    // appelle la fonction qui dessine l'oiseau (le grand corbeau)
  drawCrow(width/2-200, height/2, 120, 200, 70, 20, posCrowCorps*2, 1, false, 1);
    // appelle la fonction qui dessine l'oiseau (l'oiseau qui suit la souris)
  drawCrow(mouseX, mouseY, 60, 100, 35, 10, posCrowCorps, 1.5, eyeOpen, 3);
}

// DESSINE L'OISEAU - - - - - - - - - - - - - - - - - - - - - - - - - - - -
void drawCrow(int x, int y, int w, int h, int size, int eyes, float posCrowBody, float wing, boolean ifEye, int ifBig) {
  drawBody(x, y, h, w, wing, ifBig);          // dessine le corps
  drawChin(x, y, size, w, posCrowBody);       // dessine le menton/visage
  drawEyes(x, y, eyes, posCrowBody, ifEye);   // dessine les yeux
  drawBeak(x, y, w, posCrowBody);             // dessine le bec
  drawLegs(x, y, w/5, h/2, 15, posCrowBody);  // dessine les jambes
}

// LE CORPS - - - - - - - - - - - - - - - - - - - - - - - - - - - -
void drawBody(int x, int y, int h, int w, float wing, int ifBig) {
  rectMode(CENTER);              // mets le centre des rect au milieu
  fill(crowCorps);               // couleur du corps
  rect(x, y, w, h, 100);         // rect servant de corps (coins arrondis)
  circle(x-20, y+15, w/wing);    // cercle pour les ailes (gauche)
  circle(x+20, y+15, w/wing);    // cercle pour les ailes (droite)
  
  float distSmall = dist(mouseX, mouseY, x, y);   // position de la souris
  if (distSmall <= w && ifBig == 1) {             // si la souris est proche du gros oiseau...
    eyeOpen = true;                               // ... ferme les yeux de l'oiseau!
  } else if (distSmall <= w && ifBig == 2) {      // si la souris est proche du petit oiseau...
    eyeOpen = false;                              // ... ouvre les yeux de l'oiseau
  }
}

// LE MENTON/VISAGE - - - - - - - - - - - - - - - - - - - - - - - - - - - -
void drawChin(float x, float y, float size, float w, float posCrowBody) {
  fill(crowCorpsLight);                        // couleur du visage
  circle(x-posCrowBody, y-posCrowBody, size);  // visage gauche
  circle(x+posCrowBody, y-posCrowBody, size);  // visage droit
  circle(x, y-10, w/2);                        // menton
}

// LES YEUX - - - - - - - - - - - - - - - - - - - - - - - - - - - -
void drawEyes(float x, float y, float eyes, float posCrowBody, boolean ifEye) {
  
  if (ifEye == false) {                    // si les yeux sont ouvert
    fill(crowYeux);                                  // couleur des yeux
    circle(x-posCrowBody, y-posCrowBody, eyes);      // oeil gauche
    circle(x+posCrowBody, y-posCrowBody, eyes);      // oeil droit
    fill(0);                                         // pupille noire
    circle(x-posCrowBody, y-posCrowBody, eyes/1.5);  // oeil gauche
    circle(x+posCrowBody, y-posCrowBody, eyes/1.5);  // oeil droit
  } else {                                 // si les yeux sont fermer
    stroke(crowYeux);                                // couleur des yeux
    strokeWeight(3);                                 // épaisseur des yeux fermés
    line(x-posCrowBody, y-posCrowBody, x-posCrowBody+10, y-posCrowBody);  // oeil gauche
    line(x+posCrowBody, y-posCrowBody, x+posCrowBody-10, y-posCrowBody);  //oeil droit
    noStroke();                                      // enlève la bordure pour le reste
    
  }
  
}

// LE BEC - - - - - - - - - - - - - - - - - - - - - - - - - - - -
void drawBeak(int x, int y, int w, float posCrowBody) {
  fill(crowBec);                              // couleur du bec
  arc(x, y-10, w/5, w/2+posCrowBody, 0, PI);  // arche du bec
}

// LES JAMBES - - - - - - - - - - - - - - - - - - - - - - - - - - - -
void drawLegs(int x, int y, int w, int h, int rond, float posCrowBody) {
  fill(crowCorps);                                      // couleur des jambes (même couleur que le corps)
  rect(x-posCrowBody, y+posCrowBody*2, w, h-10, rond);  // jambe gauche
  rect(x+posCrowBody, y+posCrowBody*2, w, h-10, rond);  // jambe droite
}
