class afficherFightTxt {

  // 1. CHAMPS - les variables dont le bouton a besoin
  float x; //position en x
  float y; //position en y
  float w; //largeur?
  float h; //hauteur?
  String etiquette; //texte qui s'affichera 

  // 2. CONSTRUCTEUR
  afficherFightTxt(float ax, float ay, float aw, float ah, String aEtiquette) {
    x = ax;
    y = ay;
    w = aw;
    h = ah;
    etiquette = aEtiquette;
  }

  // 3. MÉTHODE — afficher le bouton
  void afficheText() {
    textAlign(CENTER);
    
    fill(255); //couleur du texte
    textSize(48);
    text(etiquette, x-3, y, w, h);
    text(etiquette, x+3, y, w, h);
    text(etiquette, x, y-3, w, h);
    text(etiquette, x, y+3, w, h);
    
    fill(0); //couleur du texte
    text(etiquette, x, y, w, h);
    // ?? ta mere
  }
  
  String getEtiquette() {
    return etiquette;
  }
}
