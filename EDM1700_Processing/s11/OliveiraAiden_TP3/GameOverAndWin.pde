void GameOver() {
  fill(0, 0, 0, opacity);
  noStroke();
  rect(0, 0, width, height);
  fill(255);
  text("Fin de la partie...", width/2, height/2);
  
  
  if (isLaFin == true) {
    laFin.afficher();
  } 
}

void Win() {
  fill(0, 0, 0, opacity);
  noStroke();
  rect(0, 0, width, height);
  fill(255);
  text("Bravo! Vous avez reconstruit Emmett!!", width/2, height/2);
  
  if (isWin == true) {
    leWin.afficher();
  }
}
