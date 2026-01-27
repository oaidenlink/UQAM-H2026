// SETUP - - - - - - - - - - - - - - - - - - - - - - - - - - - 
size(400, 600);                  // taille du canvas
background(118, 129, 138);       // couleur de fond
noStroke();                      // enlève les "strokes" (bordure) de tous les items suivants

// EFFETS DERRIÈRE LA TÊTE - - - - - - - - - - - - - - - - - - 
// base - - - - - - - - - - 
fill(113,227,208);             // couleur des flames
// gauche - - - - - 
circle(150, height/6-3, 100);  // base flames 1
circle(150, 30, 50);           // base flames 2
circle(160, 140, 50);          // base flames 3
// droite - - - - -
circle(230, 110, 100);         // base flames 4
circle(250, 80, 90);           // base flames 5
circle(250, 30, 40);           // base flames 6

fill(118, 129, 138);           // couleur de l'overlay gris
// gauche - - - - -
circle(115, 20, 70);           // cercle gris 1
ellipse(130, 150, 60, 50);     // cercle gris 2
// droite - - - - -
ellipse(230, 30, 40, 40);      // cercle gris 3
ellipse(280, 40, 40, 40);      // cercle gris 4
ellipse(290, 120, 30, 40);     // cercle gris 5
ellipse(245, 160, 45, 45);     // cercle gris 6

// extras - - - - - - - - - - 
fill(113,227,208);             // couleur des flames
circle(100, 25, 40);           // extra flames 1
circle(310, 30, 30);           // extra flames 2
fill(118, 129, 138);           // couleur de l'overlay gris
circle(80, 20, 40);            // extra cercle gris 1
circle(90, 55, 40);            // extra cercle gris 2
circle(120, 40, 30);           // extra cercle gris 3
circle(300, 40, 30);           // extra cercle gris 4
circle(330, 20, 30);           // extra cercle gris 5
circle(325, 45, 20);           // extra cercle gris 6

// BASE - - - - - - - - - - - - - - - - - - - - - - - - - - - -
fill(237,232,211);                 // couleur

circle(width/2, 75, 120);          // tête
circle(150, 100, 50);              // joue gauche
circle(250, 100, 50);              // joue droite

rectMode(CENTER);                  // setup de la position du rect
rect(width/2, 120, 80, 90, 50);    // machoire

rect(width/2, 180, 40, 20, 50);    // cou (partie haut)
rect(width/2, 205, 40, 20, 50);    // cou (partie bas)

// YEUX - - - - - - - - - - - - - - - - - - - - - - - - - - - -
fill(1,24,36);                                  // couleur de fond
arc(170, 80, 50, 50, 0, radians(200), CHORD);   // trou gauche
arc(230, 80, 50, 50, radians(-20), PI, CHORD);  // trou droit

fill(255);                                      // couleur de l'oeil (blanc)
arc(170, 78, 30, 30, 0, radians(200), CHORD);   // oeil gauche
arc(230, 78, 30, 30, radians(-20), PI, CHORD);  // oeil droit

// BOUCHE - - - - - - - - - - - - - - - - - - - - - - - - - - -
stroke(118, 129, 138);      // couleur de la ligne
strokeWeight(2);            // épaisseur de la ligne
line(160, 125, 170, 140);   // première ligne (gauche)  
line(170, 140, 230, 140);   // deuxième ligne (ligne droite au milieu)
line(230, 140, 240, 125);   // troisième ligne (droit)

line(180, 130, 180, 150);   // "dents" de gauche
line(200, 130, 200, 150);   // "dents" du milieu
line(220, 130, 220, 150);   // "dents" de droite

noStroke();                 // enlever les strokes pour le reste du dessin

// NEZ - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
fill(1,24,36);                          // couleur du nez
triangle(200,100, 200,115, 190,120);    // narine gauche
triangle(200,100, 200,115, 210,120);    // narine droite

// RECTANGLE POUR CACHER - - - - - - - - - - - - - - - - - - - 
rectMode(CORNER);                  // setup de la position du rect
fill(0);
rect(0, 0, 400, 200);
