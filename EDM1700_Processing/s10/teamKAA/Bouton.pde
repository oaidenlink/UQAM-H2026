class Bouton {

  // 1. CHAMPS - les variables dont le bouton a besoin
  float x; //position du bouton en x
  float y; //position du bouton en y
  float w; //largeur du bouton
  float h; //hauteur du bouton
  String etiquette; //texte qui s'affichera sur le bouton

  // 2. CONSTRUCTEUR
  Bouton(float bx, float by, float bw, float bh, String bEtiquette) {
    x = bx-bw/2;
    y = by-bh/2;
    w = bw;
    h = bh;
    etiquette = bEtiquette;
  }

  // 3. MÉTHODE — afficher le bouton
  void afficher() {
    fill(255); //couleur du bouton
    rect(x, y, w, h); //forme du bouton
    fill(0); //couleur du texte
    textAlign(CENTER);
    text(etiquette, x+w/2, y+h/2);
    // ?? ta mere
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
