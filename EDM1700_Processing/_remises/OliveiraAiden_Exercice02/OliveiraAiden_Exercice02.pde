size(400,600); //Taille canvas


//Tour de la tête
fill(119,149,228); //couleur bleu
strokeWeight(2);
triangle(200,100, 110,60, 150,8);
triangle(200,100, 200,0, 150,8);
triangle(200,100, 200,0, 250,8);
triangle(200,100, 290,60, 250,8);
triangle(200,100, 290,60, 250,168);
triangle(200,100, 200,150, 250,168);
triangle(200,100, 200,150, 150,168);
triangle(200,100, 110,60, 150,168);

fill(119,189,228); //couleur bleu
triangle(200,100, 115,55, 145,13);
triangle(200,100, 195,0, 150,8);
triangle(200,100, 205,0, 245,8);
triangle(200,100, 285,55, 255,13);
triangle(200,100, 290,60, 250,165);
triangle(200,100, 200,150, 245,200);
triangle(200,100, 195,150, 150,200);
triangle(200,100, 110,60, 145,165);




//Visage
strokeWeight(1);
fill(159,210,228);//couleur bleu
ellipse(200,75, 110,125);

//sourcils
fill(0); //couleur noir
rect(165,37, 30,5, 25);
rect(205,37, 30,5, 25);

//yeux fond
fill(255);//couleur blanc
ellipse(180,70, 35,50);
ellipse(220,70, 35,50);

//pupilles
fill(0);//coukeuur noir
ellipse(180,78, 15,15);
ellipse(220,78, 15,15);

//forme de la bouche
fill(0);//couleur noir
arc(200, 100, 60, 40, 0, PI);

//langue
fill(230,100,100);//couleur rose
arc(200, 100, 20, 40, 0, PI);
line(170,100, 230,100);
line(200,105, 200,115);


//dents
fill(255);//couleur noir
triangle(175,100, 195,100, 180,120);//dent G
triangle(225,100, 205,100, 220,120);//dent D

//cache
//rect(0,0, 400,180);

/* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 * PARTIE À AIDEN :D
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */

/*
 * Titre: EDM1700 Exercice 2: "Cadavre exquis"
 * Auteur.trice: Aiden Oliveira
 * Version: 1.0
 * Instructions: Enlever le cache (ligne 66) afin d'afficher la tête, puis 
                 appréciez le personnage complet!!
 * Mélange de personnage entre Mathis P. et Aiden O. avec un résultat surprise!
 * Notes: N/A
 */
 
// VARIABLES - - - - - - - - - - - - - - - - - - - - - - - - - - -

// variables de la cape
float arcMiniWidth = 100;     // collet top
float arcMiniHeight = 100;    // collet top
float arcBigWidth = 200;      // collet "épaules"
float arcBigHeight = 200;     // collet "épaules"

float capeWidthTop = 64;      // positions des vertex de la cape
float capeWidthBot = 110;     // positions des vertex de la cape
float capeHeightTop = 76;     // positions des vertex de la cape
float capeHeightBot= 200;     // positions des vertex de la cape

float capeLineX = 90;         // position des lignes de l'accent
float capeLineY = 499;        // position des lignes de l'accent

color capeFill = #17032C;     // couleur de la cape
color capeAccent = #5E5886;   // couleur des accents de la cape


// variables du chandail
float chandArcPosX = 60;            // le width de l'arc (mal indiqué)
float chandArcPosY = 50;            // le height de l'arc (mal indiqué)

float chandRectPosY = 30;           // position Y du rectangle ("corps")
float chandRectWidth = 80;          // largeur du corps
float chandRectHeight = 120;        // hauteur du corps
float chandRectRound = 10;          // coins arrondis

float chandFroufrouPosHeight = 95;  // position Y des froufrous
float chandFroufrouX = 60;          // largeur des froufrous
float chandFroufrouY = 50;          // hauteur des froufrous

float chandTieHeight = 60;          // position Y de la "cravatte" (rect blanc par dessus les froufrous)
float chandTieX = 20;               // width de la cravatte
float chandTieY = 80;               // height de la cravatte

color chandWhite = #FFFFFF;         // couleur générale du corps (blanc)
float chandColorFroufrou = 120;     // première couleur des froufrous


// variables des mains
int mainPaumeRadius = 40;          // radius de la paume de main 

int mainDoigtPos = 20;             // position des doigts du milieu
int mainDoigtWidth = 30;           // largeur des doigts
int mainDoigtHeight = 50;          // hauteur des doigts
int mainDoigtRound = 20;           // force de l'arrondis du rect

float mainPinkyPosX = 15;          // position X du petit doigt
float mainPinkyPosY = 15;          // position Y du petit doigt
float mainPinkyWidth = 15;         // largeur du petit doigt
float mainPinkyHeight = 35;        // hauteur du petit doigt

float mainIndexPosX = 20;          // position X de l'index
float mainIndexWidth = 15;         // largeur de l'index
float mainIndexHeight = 40;        // hauteur de l'index

float mainPouceWidth = 45;         // largeur du pouce
float mainPouceHeight = 20;        // hauteur du pouce
float mainPoucePosX = 25;          // position X du pouce
float mainPoucePosY = 8;           // position Y du pouce

color mainOmbre = #C6C4C4;         // couleur du stroke des doigts du milieu
float widthDiviserCinq = width/5;  // valeur spécifique pour la main droite
widthDiviserCinq *= 4;             // multiplicateur pour avoir la pos spécifique


// variables des jambes
float jambesPosY = height/2;      // position Y des deux jambes
float jambeGPosX = width/2-40;    // position X de la jambe gauche
float jambeDPosX = width/2+20;    // position X de la jambe droite
float jambesWidth = 20;           // largeur des jambes
float jambesHeight = 220;         // hauteur des jambes


// variables des souliers
float soulierWidth = 60;                      // largeur de la base du soulier
float soulierHeight = 20;                     // hauteur des souliers
float soulierArcWidth = 40;                   // largeur de l'arc
float soulierArcHeight = 50;                  // hauteur de l'arc

float soulierGauPosX = width/3*1.1;           // pos X du rect gauche
float soulierGauPosY = height/6*5.5;          // pos y du rect gauche

float soulierGTriUnPosX = width/3*1.25;       // pos x du premier point du triange
float soulierGTriUnPosY = height/6*5.6;       // pos y du premier point du triange
float soulierGTriDeuxPosX = width/3*1.45;     // pos x du deuxieme point du triange
float soulierGTriDeuxPosY = height/6*5.1;     // pos y du deuxieme point du triange
float soulierGTriTroisPosX = width/3*1.05;    // pos x du troisieme point du triange
float soulierGTriTroisPosY = height/6*5.1;    // pos y du troisieme point du triange

float soulierGArcPosX = width/3+3;            // pos x de l'arc gauche
float soulierGArcPosY = height/6*5.5;         // pos y de l'arc gauche

float soulierDroPosX = width/3*1.9;           // pos X du rect droit
float soulierDroPosY = height/6*5.5;          // pos Y du rect droit

float soulierDTriUnPosX = width/3*1.75;       // pos x du premier point du triange
float soulierDTriUnPosY = height/6*5.6;       // pos y du premier point du triange
float soulierDTriDeuxPosX = width/3*1.95;     // pos x du deuxieme point du triange
float soulierDTriDeuxPosY = height/6*5.1;     // pos y du deuxieme point du triange
float soulierDTriTroisPosX = width/3*1.55;    // pos x du troisieme point du triange
float soulierDTriTroisPosY = height/6*5.1;    // pos y du troisieme point du triange

float soulierDArcPosX = width/3*1.98;         // pos X de l'arc droit
float soulierDArcPosY = height/6*5.5;         // pos Y de l'arc droit

// CAPE (FOND) - - - - - - - - - - - - - - - - - - - - - - - - - - -
noStroke();  // enlève la bordure
fill(capeFill);  // ajoute de la couleur
arc(width/2, height/2-70, arcMiniWidth, arcMiniHeight, radians(225),radians(315));  // premier collet de la cape (celui sur le top)
arc(width/2, height/2, arcBigWidth, arcBigHeight, radians(230), radians(310));  // deuxième collet de la cape ("épaules")
beginShape();  // création de la forme de la cape (ppolygon pas très rectangle)
  vertex(width/2+capeWidthTop, height/2-capeHeightTop);
  vertex(width/2+capeWidthBot, height/2+capeHeightBot);
  vertex(width/2-capeWidthBot, height/2+capeHeightBot);
  vertex(width/2-capeWidthTop, height/2-capeHeightTop);
endShape();  // fin de la forme

  // la boucle permet au différentes lignes de la cape (accent) d'apparaitre à distance égale
for (int i=0; i<=22; i+=1) {
  stroke(capeAccent);  // couleur des accents
  line(width/2, height/2-90, capeLineX, capeLineY);  // création de la ligne
  capeLineX +=10;  // ajoute +10px à la position X
}

// CHANDAIL - - - - - - - - - - - - - - - - - - - - - - - - - - -

noStroke();  // enlève les bordures
fill(chandWhite);  // ajout de la couleur
arc(width/2, height/2-80, chandArcPosX, chandArcPosY, radians(220),radians(320));  // collet sur le dessus
rectMode(CENTER);  // set le point centre au milieu du carré (au lieu du coin)
rect(width/2, height/2-chandRectPosY, chandRectWidth, chandRectHeight, chandRectRound);  // rectangle qui sert de "corps"

  // boucle qui permet de dupliquer les froufrous
for (int i=0; i<=8; i++) {
  fill(chandColorFroufrou);  // set la couleur du froufrous
  arc(width/2, height/2-chandFroufrouPosHeight, chandFroufrouX, chandFroufrouY, radians(20), radians(160));  // créé le froufrou
   chandFroufrouPosHeight -= 10;  // modifie la position Y du froufrou (le mets plus bas que le dernier)
   chandColorFroufrou += 20;  // change la couleur d'un froufrou (le rends plus pale)
}

fill(chandWhite);  // set la couleur a blanc
rect(width/2, height/2-chandTieHeight, chandTieX, chandTieY);  // création de la "cravatte" qui passe par dessus les froufrous

// MAINS - - - - - - - - - - - - - - - - - - - - - - - - - - -

fill(chandWhite);  // couleur de la main gauche
rect(width/5-mainPinkyPosX, height/2-mainPinkyPosY, mainPinkyWidth, mainPinkyHeight, mainDoigtRound);  // petit doigt
rect(width/5+mainIndexPosX, height/2-mainDoigtPos, mainIndexWidth, mainIndexHeight, mainDoigtRound);  // index
stroke(mainOmbre);  // contour des deux doigts du milieu
rect(width/5, height/2-mainDoigtPos, mainDoigtWidth, mainDoigtHeight, mainDoigtRound);  // doigts du milieu
noStroke();  // retirer le contour
rect(width/5+mainPoucePosX, height/2+mainPoucePosY, mainPouceWidth, mainPouceHeight, mainDoigtRound);  // pouce
circle(width/5, height/2, mainPaumeRadius);  // paume de main

fill(chandWhite);  // couleur de la main droite
rect(widthDiviserCinq+mainPinkyPosX, height/2-mainPinkyPosY, mainPinkyWidth, mainPinkyHeight, mainDoigtRound);  // petit doigt
rect(widthDiviserCinq-mainIndexPosX, height/2-mainDoigtPos, mainIndexWidth, mainIndexHeight, mainDoigtRound);  // index
stroke(mainOmbre);  // contour de sdeux doigts du milieu
rect(widthDiviserCinq, height/2-mainDoigtPos, mainDoigtWidth, mainDoigtHeight, mainDoigtRound);  // doigts du milieu
noStroke();  // retirer le contour
rect(widthDiviserCinq-mainPoucePosX, height/2+mainPoucePosY, mainPouceWidth, mainPouceHeight, mainDoigtRound);  // pouce
circle(widthDiviserCinq, height/2, mainPaumeRadius);  // paume de main


// JAMBES - - - - - - - - - - - - - - - - - - - - - - - - - - -
rectMode(CORNER);  // set le point centre dans le coin du rect
rect(jambeGPosX, jambesPosY, jambesWidth, jambesHeight);  // jambe gauche
rect(jambeDPosX, jambesPosY, jambesWidth, jambesHeight);  // jambe droite

// SOULIERS - - - - - - - - - - - - - - - - - - - - - - - - - - -

rectMode(CENTER);  // set le point centre au centre du rect
fill(0);  // mets la couleur des souliers à noir
rect(soulierGauPosX, soulierGauPosY, soulierWidth, soulierHeight, 5);  // rect pour la base du soulier gauche
triangle(
  soulierGTriUnPosX, soulierGTriUnPosY,  // set le premier point du triange
  soulierGTriDeuxPosX, soulierGTriDeuxPosY,  // set le deuxieme point du triangle
  soulierGTriTroisPosX, soulierGTriTroisPosY  // set le troisieme du triangle
);
arc(soulierGArcPosX, soulierGArcPosY, soulierArcWidth, soulierArcHeight, PI, TWO_PI);  // bosse devant le soulier gauche

rect(soulierDroPosX, soulierDroPosY, soulierWidth, soulierHeight, 5);  // rect pour la base du soulier droit
triangle(
  soulierDTriUnPosX, soulierDTriUnPosY,  // set le premier point du triange
  soulierDTriDeuxPosX, soulierDTriDeuxPosY,  // set le deuxieme point du triangle
  soulierDTriTroisPosX, soulierDTriTroisPosY  // set le troisieme du triangle
);
arc(soulierDArcPosX, soulierDArcPosY, soulierArcWidth, soulierArcHeight, PI, TWO_PI);  // bosse devant le soulier droit
