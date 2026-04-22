// GAME OVER - - - - - - - - - - - - - - - - - - - - - - - - - - - -
void GameOver() {
  if (isLaFin == true) {                               // si vous perdez le jeu...
    noStroke();                                        // enleve la bordure
    image(bgBadEnd, 0, 0, width, height);              // affiche l'image de mauvaise fin
    fill(255);                                         // couleur blanche
    text("Fin de la partie...", width/2, height/2);    // afficher le texte 
  } 
}

// WIN - - - - - - - - - - - - - - - - - - - - - - - - - - - -
void Win() {
  if (isWin == true) {                                         // si vous gagnez le jeu...
    fill(0, 0, 0, opacity);                                    // remplis e find en noir
    noStroke();                                                // enlève la bordure
    rect(0, 0, width, height);                                 // affiche un rectangle
    fill(255);                                                 // couleur blanche
    text("Bravo! Vous avez reconstruit Emmett!!", width/2, height/2);  // affiche le texte
    PImage GoodEnding = loadImage("EmmetGoodEnding.png");      // load l'image de la bonne fin
    image(GoodEnding, 30, 200);                                // affiche l'image
  }
}
