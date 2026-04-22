class btnAttacks {

  // VARIABLES
  float x;                 //position en x
  float y;                 //position en y
  float w;                 //largeur
  float h;                 //hauteur
  String etiquette;        //texte qui s'affiche
  String atkDmg;           //texte pour l'attaque

  // CONSTRUCTEUR
  btnAttacks(float bx, float by, float bw, float bh, String bEtiquette, String bAtkDmg) {
    x = bx-bw/2;
    y = by-bh/2;
    w = bw;
    h = bh;
    etiquette = bEtiquette;
    atkDmg = bAtkDmg;
  }

  // FONCTIONS
  void afficher() {
    fill(0);                           //couleur du bouton
    stroke(255);                       //bordure blanche
    rect(x, y, w, h);                  //forme du bouton
    fill(255);                         //couleur du texte
    textAlign(CENTER);                 //aligne texte au centre
    textSize(16);                      //taille du texte
    text(etiquette, x+w/2, y+h/2);     //afficher le texte
    fill(0);                           // couoleur noire
    textSize(27);                      // change la taille du texte
    text(atkDmg, x-140, y+15, w, h);   // affiche le texte
  }


  // quand on clique le btn
  boolean estClique() {
    if ( mouseX >= x && mouseX <= x + w &&
      mouseY >= y && mouseY <= y + h ) {  //detection de collision avec le bouton
      return true;                        // oui le btn est cliqué
    } else {
      return false;                       // non le btn n'est pas cliqué
    }
  }

  // retourne le texte de l'étiquette (pour savoir c'est quel item)
  String getEtiquette() {
    return etiquette;      // retourne un string
  }
}
