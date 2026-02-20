/*
 * Titre: EDM1700 Exercice 4: "Mini-jeu"
 * Auteur.trice: Aiden Oliveira
 * Version: 1.0
 * Instructions: Suivez la balle et ne la laissez pas partir!!
 * Notes: Ça bug un peu quand le cercle grossit sur les bord,
 *        mais au moins le reste est bon! :D
 * Bugs / problèmes : Kirby "jiggle" sur les côtés quand on 
 *                    augmente sa taille trop proche du bord
 */

// VARIABLES - - - - - - - - - - - - - - - - - - - - - - - - - - - -
final float BASE_CIRCLE_X = 300;    // variable inchangeable max. de la pos. X du cercle
final float BASE_CIRCLE_Y = 50;     // variable inchangeable max. de la pos. Y du cercle
final float BASE_CIRCLE_SIZE = 30;  // variable inchangeable max. de la taille
final float BASE_CIRCLE_SPEED = 3;  // variable inchangeable max. de la vitesse
final float MAX_SIZE = 100;         // variable inchangeable max. de la taille maximum

color bgColor = #D3EDEB;          // couleur du fond
color bgColorExtra = #E8FAF9;     // couleur pour les cercles par dessus le fond
float circleColR = 255;           // couleur "R" dans RGB
float circleColG = 93;            // couleur "G" dans RGB
float circleColB = 198;           // couleur "B" dans RGB

String txtRestart = "Appuyez sur une touche pour recommencer";   // texte en cas de 'game over'
String txtLvlUp = "Niveau ";                                      // texte pour le niveau actuel
int txtLvlUpNb = 1;                                               // nombre du niveau

float distSouris;                 // variable pour la position de la souris

float circleX;                    // variable de la position X du cercle
float circleY;                    // variable de la position Y du cercle
float circleSize;                 // variable de la taille du cercle
float circleSpeedX = 2;           // variable de la vitesse sur l'axe des X
float circleSpeedY = 2;           // variable de la vitesse sur l'axe des Y
float kirbSize = 5;               // variable des autres éléments de Kirby

boolean kirby = true;             // détecte si Kirby est visible ou pas
PFont kirbFont;                   // set la police de charactères
int time;                         // timer pour afficher le niveau

// SETUP - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
void setup() {
  size(600, 800);                                  // taille de la fenêtre
  circleX = BASE_CIRCLE_X;                         // set la pos. de base en X
  circleY = BASE_CIRCLE_Y;                         // set la pos. de base en Y
  circleSize = BASE_CIRCLE_SIZE;                   // set la taille de base
  kirbFont = createFont("kirby-classic.ttf", 128); // "créé" la police de chara. 
}

// DRAW - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
void draw() {
  background(bgColor);                             // set la couleur du fond
  noStroke();                                      // enlève la bordure sur tous les items
  kirbFont = createFont("kirby-classic.ttf", 128); // assigne la police de chara. sur tous les items
  textFont(kirbFont);
  for (int y = 0; y <= height; y += 40) {        // petite boucle pour le pattern du fond
    for (int x = 0; x <= width; x += 40) {
      fill(bgColorExtra);                        // couleur des cercles
      circle(x, y, 40);                          // création du cercle
    }
  }
  
  distSouris = dist(mouseX, mouseY, circleX, circleY);  // détecte la distance entre la souris et le cercle

  // ce qui arrive si le cercle est plus gros que la taille maximale
  if (circleSize >= MAX_SIZE) { 
    txtLvlUpNb++;                    // ajoute + 1 au numéro du niveau
    time = millis();                 // commence le timer

    circleSize = BASE_CIRCLE_SIZE;   // set la taille du cercle a sa taille de départ
    circleColR = random(20, 240);    // choisi une couleur random (R)
    circleColG = random(20, 240);    // choisi une couleur random (G)
    circleColB = random(20, 240);    // choisi une couleur random (B)

    // condition pour augmenter la vitesse de Kirby
    if (circleSpeedX <= 0) {         // si la vitesse du cercle est plus petite que 0...
      circleSpeedX -= 0.5;           // ... alors on la mets plus basse!
    } else if (circleSpeedX > 0) {   // si elle est plus grande que 0...
      circleSpeedX += 0.5;           // ... on la mets plus haute!
    }

    if (circleSpeedY <= 0) {         // si la vitesse du cercle est plus petite que 0...
      circleSpeedY -= 0.5;           // ... alors on la mets plus basse!
    } else if (circleSpeedY > 0) {   // si elle est plus grande que 0...
      circleSpeedY += 0.5;           // ... on la mets plus haute!
    }
  }

  // condition pour l'affichage du texte des niveaux
  if ( millis() <= time + 2000) {               // si le temps est plus petit que 2000 (2 sec)
    String niveau = txtLvlUp + txtLvlUpNb;      // affiche le niveau à l'écran
    fill(0);                                    // mets le texte en noir
    rectMode(CENTER);                           // mets le point milieu au centre du rect
    textSize(48);                               // change la taille du texte
    textAlign(CENTER);                          // aligne le texte au centre
    text(niveau, width/2, height/2, 400, 500);  // inscrit le texte et sa pos.
    rectMode(CORNER);                           // remets le point milieu dans le coin (original)
  }

  // condition pour savoir si la souris est dans le cercle
  if (distSouris <= circleSize) {              // si la pos. de la souris est dans le cercle
    circleSize += 0.2;                         // augmente la taille de Kirby
    fill(circleColR, circleColG, circleColB);  // colorie le Kirby
  } else if (distSouris >= circleSize) {       // si la pos. de la souris est hors du cercle
    circleSize -= 0.1;                         // baisse la taille de la souris
    fill(circleColR, circleColG, circleColB);  // colorie le Kirby
  }

  // condition pour savoir si on a perdu (game over)
  if (circleSize <= 5) {                            // si la taille de Kirby est plus petit que 5
    fill(0);                                        // mets le texte en noir
    rectMode(CENTER);                               // aligne le point milieu au centre de l'item
    textSize(44);                                   // set la taille du texte
    textAlign(CENTER);                              // aligne le texte au centre
    text(txtRestart, width/2, height/2, 400, 500);  // affiche le texte et sa pos.
    noFill();                                       // sans ça, Kirby devient inversé et continue de bouger dans l'écran
    kirby = false;                                  // Kirby est visible? Non!

    // condition afin de savoir si une touche est appuyée
    if (keyPressed) {                    // si une touche est enfoncé
      textSize(0);                       // enlève le texte (baisser sa taille)
      circleX = BASE_CIRCLE_X;           // set la pos X à sa pos de base
      circleY = BASE_CIRCLE_Y;           // set la pos Y à sa pos de base
      circleSize = BASE_CIRCLE_SIZE;     // set la taille à sa taille de base
      circleSpeedX = BASE_CIRCLE_SPEED;  // set la vitesse à sa vitesse de base
      circleSpeedY = BASE_CIRCLE_SPEED;  // set la vitesse à sa vitesse de base
      kirby = true;                      // Kirby est visible? Maintenant oui!
    }
  }

  pushMatrix();            // créé une "bubulle" pour Kirby
  if (kirby == false) {    // si Kirby est invisible
    noFill();              // son visage + pieds sont invisibles
  } else {                 // si Kirby est visible
    // - CORPS - 
    circle(circleX, circleY, circleSize*2);                  // corps de kirby
    circle(circleX+30, circleY, circleSize/1.3);             // main droite
    circle(circleX-30, circleY, circleSize/1.3);             // main gauche
    // - YEUX (NOIRS) -
    fill(0);                                                 // couleur : noir
    ellipse(circleX+10, circleY-10, kirbSize*2, kirbSize*4); // oeil droit
    ellipse(circleX-10, circleY-10, kirbSize*2, kirbSize*4); // oeil gauche
    // - YEUX (BLEUS) - 
    fill(#2D3A79);                                           // couleur : bleu
    ellipse(circleX+10, circleY-10, kirbSize, kirbSize*3);   // oeil droit
    ellipse(circleX-10, circleY-10, kirbSize, kirbSize*3);   // oeil gauche
    // - YEUX (BLANC)
    fill(255);                                               // couleur : blanc
    circle(circleX+11, circleY-12, kirbSize+1);              // oeil droit
    circle(circleX-9, circleY-12, kirbSize+1);               // oeil gauche
    // - BOUCHE (NOIR) -
    fill(0);                                                          // couleur : noir
    arc(circleX, circleY+3, kirbSize+7, kirbSize*3+2, 0, PI, CHORD);  // forme de la bouche
    // - BOUCHE (LANGUE) - 
    fill(#F05785);                                           // couleur : rose
    ellipse(circleX, circleY+8, kirbSize+3, kirbSize);       // forme de la langue
    // - PIEDS -
    fill(circleColR+10, circleColG+20, circleColB-40);       // couleur des pieds est proche de celle du corps
    ellipse(circleX+20, circleY+20, kirbSize*6, kirbSize*8); // pied droit
    ellipse(circleX-20, circleY+20, kirbSize*6, kirbSize*8); // pied gauche 
  }
  popMatrix();              // de la "bubulle"

  circleX += circleSpeedX;  // ajoute la vitesse à Kirby afin qu'il bouge (en X)
  circleY += circleSpeedY;  // ajoute la vitesse à Kirby afin qu'il bouge (en Y)

  // CECI EST UN TEST (semi-fonctionnel?) AFIN D'EMPÊCHER KIRBY DE "JIGGLE" SUR LES BORDS
  circleX = constrain(circleX, 0, width);    // limite la pos X de Kirby dans l'écran
  circleY = constrain(circleY, 0, height);   // limite la pos Y de Kirby dans l'écran

  // rebondissements de Kirby
  if (circleX-circleSize < 0 || circleX+circleSize > width) {    // si on est hors de l'écran (en X)
    circleSpeedX = -circleSpeedX;                                // inverse sa vitesse
  }
  if (circleY-circleSize < 0 || circleY+circleSize > height) {   // si on est hors de l'écran (en Y)
    circleSpeedY = -circleSpeedY;                                // inverse sa vitesse
  }
}
