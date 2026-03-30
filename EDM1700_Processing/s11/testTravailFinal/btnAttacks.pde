class btnAttacks {

  // 1. CHAMPS - les variables dont le bouton a besoin
  float x; //position du bouton en x
  float y; //position du bouton en y
  float w; //largeur du bouton
  float h; //hauteur du bouton
  String etiquette; //texte qui s'affichera sur le bouton
  color coulClique;

  // 2. CONSTRUCTEUR
  btnAttacks(float bx, float by, float bw, float bh, String bEtiquette) {
    x = bx-bw/2;
    y = by-bh/2;
    w = bw;
    h = bh;
    etiquette = bEtiquette;
  }

  // 3. MÉTHODE — afficher le bouton
  void afficher() {
    fill(coulClique); //couleur du bouton
    stroke(255);
    rect(x, y, w, h); //forme du bouton
    fill(255); //couleur du texte
    textAlign(CENTER);
    text(etiquette, x+w/2, y+h/2);
    // ?? ta mere
  }
  
  void couleurBtn(boolean coul) {
    if (coul == true) {
      coulClique = #484848;
      coul = false;
    } else {
      coulClique = 0;
    }
  }

  // 4. MÉTHODE — est-ce que la souris est en train de cliquer sur le bouton ?
  boolean estClique() {
    //detection de collision avec le bouton
    if ( mouseX >= x && mouseX <= x + w &&
      mouseY >= y && mouseY <= y + h ) {
      return true;
    } else {
      return false;
    }
  }
}
