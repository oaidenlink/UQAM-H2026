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
    noStroke();                                                // enlève la bordure
    image(bgGoodEnd, 0, 0, width, height);                      // affiche l'image de la bonne fin
    fill(85);                                                 // couleur blanche
    text("Bravo! Vous avez reconstruit Emmett!!", width/2, height/2);  // affiche le texte
    
    // ANIMATION
    currentFrame = (currentFrame+1) % numFrames;                        // set la frame
    for (int x = -10; x < currentFrame; x += EmmettAnim[0].width) {     // commence la boucle pour l'anim
      image(EmmettAnim[(currentFrame) % numFrames], x+20, height*0.2);  // affiche les images
    }
  }
}
