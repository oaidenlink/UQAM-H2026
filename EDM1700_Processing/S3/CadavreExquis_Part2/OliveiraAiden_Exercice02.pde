size(400,600); //Taille canva


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
rect(0,0, 400,180);

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
int arcMiniWidth = 100;     // collet top
int arcMiniHeight = 100;    // collet top
int arcBigWidth = 200;      // collet "épaules"
int arcBigHeight = 200;     // collet "épaules"
int capeWidthTop = 64;      // positions des vertex de la cape
int capeWidthBot = 110;     // positions des vertex de la cape
int capeHeightTop = 76;     // positions des vertex de la cape
int capeHeightBot= 200;     // positions des vertex de la cape
int capeLineX = 90;         // position des lignes de l'accent
int capeLineY = 499;        // position des lignes de l'accent
color capeFill = #17032C;   // couleur de la cape
color capeAccent = #5E5886; // couleur des accents de la cape

// variables du chandail
int chandArcPosX = 60;            // le width de l'arc (mal indiqué)
int chandArcPosY = 50;            // le height de l'arc (mal indiqué)
int chandRectPosY = 30;           // position Y du rectangle ("corps")
int chandRectWidth = 80;          // largeur du corps
int chandRectHeight = 120;        // hauteur du corps
int chandRectRound = 10;          // coins arrondis
int chandFroufrouPosHeight = 95;  // position Y des froufrous
int chandFroufrouX = 60;          // largeur des froufrous
int chandFroufrouY = 50;          // hauteur des froufrous
int chandTieHeight = 60;          // position Y de la "cravatte" (rect blanc par dessus les froufrous)
int chandTieX = 20;               // width de la cravatte
int chandTieY = 80;               // height de la cravatte
color chandWhite = #FFFFFF;       // couleur générale du corps (blanc)
int chandColorFroufrou = 120;     // première couleur des froufrous

// variables des mains

// variables des souliers

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

fill(255);
circle(

// SOULIERS - - - - - - - - - - - - - - - - - - - - - - - - - - -
 
