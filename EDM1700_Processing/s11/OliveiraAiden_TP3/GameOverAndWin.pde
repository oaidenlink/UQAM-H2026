void GameOver() {
  if (isLaFin == true) {
    fill(0, 0, 0, opacity);
    noStroke();
    rect(0, 0, width, height);
    fill(255);
    text("Fin de la partie...", width/2, height/2);
    laFin.afficher();
  } 
}

void Win() {
  if (isWin == true) {
    fill(0, 0, 0, opacity);
    noStroke();
    rect(0, 0, width, height);
    fill(255);
    text("Bravo! Vous avez reconstruit Emmett!!", width/2, height/2);
    PImage GoodEnding = loadImage("EmmetGoodEnding.png");
    image(GoodEnding, 200, 400);
    //leWin.afficher();
  }
}
