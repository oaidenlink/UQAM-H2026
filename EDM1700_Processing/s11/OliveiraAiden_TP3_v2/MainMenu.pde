// MAIN MENU - - - - - - - - - - - - - - - - - - - - - - - - - - - -
void MainMenu() {
  // texte introduction
  String txt = "Suit Lexie à travers sa ville natale où elle cherche à réparer son ami robot, Emmett, détruit dans un accident. Trouve des amis et récolte les morceaux manquants afin de le réparer le plus vite possible! Attentions aux rats et à la poussière… Ils peuvent venir mettre des bâtons dans tes roues..."; 

  noStroke();                            // enlève la bordure
  image(bgMenu, 0, 0, width, height);    // affiche l'image de fond
  fill(0);                               // couleur noire
  rectMode(CENTER);                      // aligne les objets au milieu
  textAlign(CENTER);                     // aligne le texte au milieu
  
  textFont(fontTitre);                            // change la police d'écriture
  textSize(75);                                   // modifie la taille du texte
  text("REWIRED", width/2, height/3, 500, 200);   // texte du titre
  
  textFont(fontGen);                          // change la police d'écriture
  textSize(24);                               // modifie la taille du texte 
  text(txt, width/2, height*0.7, 500, 500);   // affiche le texte
  
  rectMode(CORNER);    // remets l'alignement au coin
  btnMenu.afficher();  // affiche le bouton ppour jouer
}
