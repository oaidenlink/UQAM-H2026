class afficherTexte {

  // 1. CHAMPS - les variables dont le bouton a besoin
  float x; //position en x
  float y; //position en y
  float w; //largeur?
  float h; //hauteur?
  String etiquette; //texte qui s'affichera 

  // 2. CONSTRUCTEUR
  afficherTexte(float ax, float ay, float aw, float ah, String aEtiquette) {
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
    text(etiquette, x-3, y);
    text(etiquette, x+3, y);
    text(etiquette, x, y-3);
    text(etiquette, x, y+3);
    
    fill(0); //couleur du texte
    text(etiquette, x, y);
    // ?? ta mere
  }
  
  String getEtiquette() {
    return etiquette;
  }
}
