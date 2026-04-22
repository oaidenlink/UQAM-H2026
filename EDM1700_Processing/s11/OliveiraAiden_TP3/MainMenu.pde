// MAIN MENU - - - - - - - - - - - - - - - - - - - - - - - - - - - -
void MainMenu() {
  String txt = "Suit Lexie à travers sa ville natale où elle cherche à réparer son ami robot, Emmett, détruit dans un accident. Trouve des amis et récolte les morceaux manquants afin de le réparer le plus vite possible! Attentions aux rats et à la poussière… Ils peuvent venir mettre des bâtons dans tes roues..."; 

  noStroke();
  image(bgMenu, 0, 0, width, height);
  fill(0);
  
  rectMode(CENTER);
  textAlign(CENTER);
  
  textFont(fontTitre);
  textSize(75);
  text("REWIRED", width/2, height/3, 500, 200);
  
  textFont(fontGen);
  textSize(24);
  text(txt, width/2, height*0.7, 500, 500);
  
  rectMode(CORNER);
  btnMenu.afficher();
}
