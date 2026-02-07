/*
 * Titre: EDM1700 Exercice 3: "Peinture à numéro"
 * Auteur.trice: Aiden Oliveira
 * Version: 1.0
 * Instructions: Cliquez sur les pots de couleurs pour en choisir
                 une, puis peinturez le canva!
 * Notes: je n'ai pas réussi a faire le truc de "spacebar" directement dans
          le draw() avec un if(keyPressed), donc j'ai utilisé la fonction 
          keyPressed() à la place (coup illégal, pardon)
 */
 
 // VARIABLES - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 color bgColor = #EDFAF9;          // couleur du fond
 color paintBgColor = #585B5D;     // couleur de la "table" où on trouve les couleurs
 color peintureRouge = #FC0000;    // couleur de la peinture rouge
 color peintureBleu = #0038FC;     // couleur de la peinture bleu
 color peintureJaune = #EEFF0A;    // couleur de la peinture jaune
 color pinceau;                    // couleur du pinceau (commence vide)
 
 float posCanvaX = 180;            // position X du "canva" où on peut dessiner
 float posCanvaY = 20;             // position Y du "canva" où on peut dessiner
 float widthCanva = 600;           // width du canva
 float heightCanva = 560;          // height du canva
 
 float posPeintureX = 80;          // position X des pots de peinture
 float posPeintureRougeY = 100;    // position Y du pot rouge
 float posPeintureBleuY = 300;     // position Y du pot bleu
 float posPeintureJauneY = 500;    // position Y du pot jaune
 float circleRadius = 50;          // radius du pot de peinture
 

 // SETUP - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// setup des éléments de base du projet (fond, taille, etc)
void setup() {
  size(800, 600);          // taille du projet
  background(bgColor);     // couleur du fond
 
 // "table" pour les couleurs
  noStroke();                    // enlève la bordure des éléments suivants
  fill(paintBgColor);            // change la couleur du fond (gris)
  rect(0, 0, width/5, height);   // rectangle servant de table pour les pots
  
 // pot de peinture rouge
  fill(peintureRouge);                                      // couleur rouge
  circle(posPeintureX, posPeintureRougeY, circleRadius*2);  // création du cercle
  
 // pot de peinture bleu
  fill(peintureBleu);                                        // couleur bleu
  circle(posPeintureX, posPeintureBleuY, circleRadius*2);    // création du cercle
  
 // pot de peinture jaune
  fill(peintureJaune);                                        // couleur jaune
  circle(posPeintureX, posPeintureJauneY, circleRadius*2);    // création du cercle
}

 // DRAW - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// permet de dessiner dans l'écran
void draw(){
  // trouve la distance entre la souris et les pots de peinture
  float distRouge = dist(mouseX, mouseY, posPeintureX, posPeintureRougeY);   
  float distBleu = dist(mouseX, mouseY, posPeintureX, posPeintureBleuY);
  float distJaune = dist(mouseX, mouseY, posPeintureX, posPeintureJauneY);
  
  
  if (distRouge <= circleRadius && mousePressed) {         // si on est dans le pot rouge
    pinceau = peintureRouge;                               // rends le pinceau rouge
  } else if (distJaune <= circleRadius && mousePressed) {  // si on est dans le pot jaune
    pinceau = peintureJaune;                               // rends le pinceau jaune
  } else if (distBleu <= circleRadius && mousePressed) {   // si on est dans le pot bleu
    pinceau = peintureBleu;                                // rends le pinceau bleu
  }
  
  if (posCanvaX <= mouseX && mouseX <= (posCanvaX + widthCanva) &&    // si on est "dans"
      posCanvaY <= mouseY && mouseY <= (posCanvaY + heightCanva)) {   // le canvas...
    if (mousePressed) {                               // ... et qu'il y a le clic de souris
      fill(pinceau);                                  // remplis le cercle/rect avec la couleur actuelle
      float pinceauSize = abs(mouseX - pmouseX);      // détecte le mouvement de la souris
      
      if (pinceau == peintureRouge) {                // si la couleur du pinceau est rouge
        noStroke();                                  // par défaut, enlève la bordure (sans ça, ça cause des problèmes avec le cercle jaune)
        circle(mouseX, mouseY, pinceauSize);         // fait une série de cercles (premier pinceau) 
                                                     // selon la vitesse de la souris
      } else if (pinceau == peintureBleu) {          // SINON si la couleur du pinceau est bleu
        stroke(pinceau, 60);                         // change la couleur du stroke ainsi que son opacité
        strokeWeight(pinceauSize);                   // set l'épaisseur du stroke selon la vitesse de la souris
        line(pmouseX, pmouseY, mouseX, mouseY);      // créé la ligne selon la pos de la souris
      } else if (pinceau == peintureJaune){          // SINON si la couleur du pinceau est jaune
        rectMode(CENTER);                                     // set le centre du rect au centre
        rect(mouseX, mouseY, pinceauSize-5, pinceauSize-5);   // créer un rect selon la pos de la
                                                              // souris + size selon la vitesse
        noFill();                                             // mets les éléments suivants vide
        stroke(pinceau, 40);                                  // mets la bordure la couleur du pinceau
        strokeWeight(10);                                     // set l'épaisseur du stroke
        circle(mouseX, mouseY, pinceauSize+20);               // créer un cercle autour du rect
      }
    }
  } else {            // SINON (this 'else' doesn't work and i'm too tired to fix this)
    noFill();         // rends les éléments vide
    noStroke();       // rends les éléments sans stroke
  }
}

// fonction illégale de la mort qui tue (vider le canvas en appuyant sur "espace")
void keyPressed() {          // lorsqu'une touche est enfoncé
    if (keyCode == ' ') {    // si cette touche est la barre d'espace
      rectMode(CENTER);      // set le point centre au milieu du rect
      noStroke();            // enlève la stroke
      fill(bgColor);         // remplir le rect avec la couleur du fond
                             // créer un rect par dessus les dessins déjà fait ("vide" le canvas)
      rect(posCanvaX+300, height/2, widthCanva+40, heightCanva+40);
    }
}

// now i'm braindead 
