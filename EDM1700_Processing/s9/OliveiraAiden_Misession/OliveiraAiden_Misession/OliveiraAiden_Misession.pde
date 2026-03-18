/*
 * Titre: EDM1700 Travail pratique de mi-session
 * Auteur.trice: Aiden Oliveira
 * Version: 1.0
 * Instructions: Commencez le jeu en appuyant sur le bouton "play" en haut, puis
                 cliquez sur la mouche pour essayer de la faire disparaitre! (Le
                 jeu n'a pas de fin)
 * Notes: Une scène où vous tentez de déguster votre soupe sur la table (inanimé)
 *        avec votre cuillère (animé), alors qu'une mouche (personnage interactif)
 *        vous tourne autour...
 */

// VARIABLES - - - - - - - - - - - - - - - - - - - - - - - - - - - -
color noodleColor = #DEC686;            // set la couleur des nouilles
float rotSpoon;                         // variable pour la rotation
final float BASE_ROT_SPOON = 0;         // variable fixe de la rotation de base

float circleX = 150;                    // variable de la position X du cercle
float circleY = 400;                    // variable de la position Y du cercle
float circleSize = 70;                  // variable de la taille du cercle
float circleSpeedX = 15;                // vitesse de la mouche
float circleSpeedY = 15;                // vitesse de la mouche

float distSouris;                       // variable pour la pos de la souris

int nbMouche = 0;                       // quantité de mouche tué

// SETUP - - - - - - - - - - - - - - - - - - - - - - - - - - - -
void setup() {
  size(1280, 720);                      // grandeur de l'écran
  frameRate(24);                        // baisse le frame rate (pour que ça soit moins rapide)
  rotSpoon = BASE_ROT_SPOON;            // set la rotation a 0;

}

// DRAW - - - - - - - - - - - - - - - - - - - - - - - - - - - -
void draw() {
  background(#CFC6D1);                          // couleur du fond
  
  String leTexte = "Nombre de mouche tuée : " + nbMouche;  // affiche le nb de mouche tué
  rectMode(CENTER);                             // set le point centre au centre
  fill(0);                                      // mets le texte en noir
  textSize(24);                                 // grandeur du texte
  textAlign(LEFT);                              // aligne le texte a gauche
  text(leTexte, 550, 60, 1000, 50);             // positionne le texte (y'a rien la dedans qui fonctionnais bruh)
  rectMode(CORNER);                             // remets le point centre dans le coin pour le reste du projet
  
  drawBackground();                             // appelle la fonction qui dessine le fond
  drawSoup();                                   // appelle la fonction qui dessine la soupe
  
  if (rotSpoon <= 360) {                        // si la rot de la cuillère est plus petit que 360
    for (int i = 0; i <= 360; i++) {            // pendant 360 instances
      rotSpoon += 0.01;                         // fait tourner la cuillère
      drawSpoon(rotSpoon);                      // et dessine la cuillère
    }
  } else if (rotSpoon >= 360) {                 // sinon si ça dépasse 360
    rotSpoon = BASE_ROT_SPOON;                  // remets la cuillère a 0 (pour recommencer la boucle)
  }
  
  circleX += circleSpeedX;                      // ajoute la vitesse à la mouche afin qu'elle bouge (en X)
  circleY += circleSpeedY;                      // ajoute la vitesse à la mouche afin qu'elle bouge (en Y)
  distSouris = dist(mouseX, mouseY, circleX, circleY);    // calcule la pos de la souris
  drawMouche(distSouris);                       // dessine la mouche
}

// ÉLÉMENTS INANIMÉS + BOUCLE (soupe) - - - - - - - - - - - - - 
void drawSoup() {
  stroke(#506371);                    // ajoute la bordure du bol
  strokeWeight(30);                   // ajoute l'épaisseur de la bordure du bol
  fill(#935F46);                      // ajoute la couleur de la soupe
  circle(width/2, height/2, 600);     // créée le bol de soupe

  drawVeggies();                      // appelle la fonction qui créé les légumes
  
  for (int i = 0; i <= 40; i++) {     // boucle afin de créer les pâtes
    float posX = random(430, 834);    // créée une position aléatoire pour une nouille (X)
    float posY = random(170, 530);    // créée une position aléatoire pour une nouille (Y)
    drawNoodles(posX, posY);          // appelle la fonction qui fait les nouilles (envoie des positions)
  }
}

void drawVeggies() {                      // fonction pour dessiner les légumes
    // - - CELERI - - - - - - - - - - 
  noStroke();                             // enlève la bordure
  fill(#91B475);                          // mets le celeri vert
  rectMode(CENTER);                       // mets le point centre au centre du rect
    // NOTE: J'ai fait plusieurs tests pour la rotation, cette partie du code est questionnable....
  pushMatrix();
    translate(width/2, height/2);         // mets le point centre au centre
    rotate(radians(rotSpoon+50));         // fait tourner les légumes
    rect(10, 0, 50, 50, 10);              // dessine les celeri
    rect(150, 120, 50, 50, 10);          
    rect(200, -40, 50, 50, 10);          
    rect(-120, 150, 50, 50, 10);  
  popMatrix();
  rectMode(CORNER);                       // mets le point centre au coin du rect
  
  
  
    // - - CAROTTE - - - - - - - - - - 
  pushMatrix();
    translate(width/2, height/2);         // mets le point centre au centre
    rotate(radians(rotSpoon));            // fait tourner les légumes
    noStroke();                           // enlève la bordure
    fill(#DEA467);                        // mets la carotte orange
    circle(100, 0, 60);                   // dessine les carottes
    circle(-150, -150, 60);
    circle(190, 160, 60);
    circle(-120, 115, 60);
    circle(0, -200, 60);
  popMatrix();
  
    // - - PATATE - - - - - - - - - - 
  pushMatrix();
    translate(width/2, height/2);         // mets le point centre au centre
    rotate(radians(rotSpoon));            // fait tourner les légumes
    noStroke();                           // enlève la bordure
    fill(#F5ECD5);                        // mets les patates couleur patate
    rect(105, 190, 50, 50, 20);           // dessine les patate 
    rect(-190, 100, 50, 50, 20);
    rect(180, -170, 50, 50, 20);
    rect(-150, -130, 50, 50, 20);
    rect(20, 40, 50, 50, 20);
  popMatrix();
}

void drawNoodles(float posX, float posY) {   // dessine les pâtes
  noFill();                                  // enleve la couleur
  stroke(noodleColor);                       // créé une bordure couleur nouille
  strokeWeight(10);                          // modifie l'épaisseur de la nouille
  circle(posX, posY, 30);                    // dessine le cercle
}

void drawBackground() {                      // dessine un fond simple
  noStroke();                                // enlève la bordure
  
  rectMode(CENTER);                          // mets le point centre au centre du rect
  fill(#8686A0);                             // colore le naperon
  rect(width/2, height/2, 1000, 500);        // dessine le naperon
  rectMode(CORNER);                          // mets le point centre au coin du rect
  
  fill(#F5FCFB);                             // colore le napkin
  triangle(940,100, 940,600, 1150,350);      // dessine le napkin
  
  stroke(#B4E2EA);                           // dessine la bordure (verre)
  strokeWeight(10);                          // mets l'épaisseur de bordure
  fill(#F7BC25);                             // colore le cercle (jus)
  circle(1000, -20, 200);                    // dessine le verre de jus
}

// ÉLÉMENTS ANIMÉS - - - - - - - - - - - - - 
void drawSpoon(float rot) {
  pushMatrix();                          // créé la bubulle pour l'animation
    translate(width/2, height/2);        // déplace le "centre" pour la rota
    rotate(radians(rot));                // tourne la cuillère
    rectMode(CENTER);                    // set le centre du rect au centre
    noStroke();                          // enlève la bordure
    fill(#90949B);                       // mets la cuillère grise
    rect(360, 0, 300, 50);               // dessine la cuillère
  popMatrix();                           // ferme la bubulle
}

// PERSONNAGE INTERACTIF - - - - - - - - - - - - - 
void drawMouche(float distSouris) {
  pushMatrix();
    rectMode(CENTER);                          // set le point centre au centre
    noStroke();                                // enlève la bordure
    
      // - - AILES - - - - - - - - - - 
    fill(#D0E7ED);                             // colorie les ailes
    ellipse(circleX+20, circleY+15, circleSize-20, circleSize+10);  // aile droite
    ellipse(circleX-20, circleY+15, circleSize-20, circleSize+10);  // aile gauche
    
      // - - CORPS - - - - - - - - - - 
    fill(#12151A);                            // colorie le corps
    circle(circleX, circleY, circleSize);     // corps
    
      // - - PATTES - - - - - - - - - - 
    rect(circleX+25, circleY+30, 6, 30);      // pattes (de gauche a droite)
    rect(circleX+15, circleY+35, 6, 30);
    rect(circleX+5, circleY+30, 6, 30);
    rect(circleX-5, circleY+30, 6, 30);
    rect(circleX-15, circleY+35, 6, 30);
    rect(circleX-25, circleY+30, 6, 30);
    
      // - - YEUX - - - - - - - - - - 
    fill(#A51C21);                            // colorie les yeux
    circle(circleX+20, circleY-10, 30);       // oeil gauche
    circle(circleX-20, circleY-10, 30);       // oeil droit
  popMatrix();
  
  if (distSouris <= circleSize && mousePressed) {   // si la pos. de la souris est dans le cercle
    float randomPosX = random(30, width-40);        // chiffre aléatoire (pos X)
    float randomPosY = random(30, height-40);       // chiffre aléatoire (pos Y)
    circleX = randomPosX;                           // bouge la mouche a une pos X aléatoire
    circleY = randomPosY;                           // bouge la mouche a une pos Y aléatoire
    nbMouche++;                                     // nombre de mouche tué augmente de 1
  }
  
  if (circleX-circleSize/2 <= 0 || circleX+circleSize/2 >= width) {    // si on est hors de l'écran (en X)
    circleSpeedX = -circleSpeedX;                                      // inverse sa vitesse
  }
  if (circleY-circleSize/2 < 0 || circleY+circleSize/2 > height) {     // si on est hors de l'écran (en Y)
    circleSpeedY = -circleSpeedY;                                      // inverse sa vitesse
  }
}
