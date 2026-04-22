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

    fill(0);
    textSize(27);
    text(atkDmg, x-140, y+15, w, h);
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

  String getEtiquette() {
    return etiquette;
  }
}
