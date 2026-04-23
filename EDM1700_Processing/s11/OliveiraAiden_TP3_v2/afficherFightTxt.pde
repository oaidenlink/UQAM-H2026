/// - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// AFFICHE LE TEXTE LORS DES COMBATS (À DROITE)
/// - - - - - - - - - - - - - - - - - - - - - - - - - - - 
class afficherFightTxt {

  // VARIABLES 
  float x;                 //position en x
  float y;                 //position en y
  float w;                 //largeur
  float h;                 //hauteur
  String etiquette;        //texte qui s'affiche

  // CONSTRUCTEUR
  afficherFightTxt(float ax, float ay, float aw, float ah, String aEtiquette) {
    x = ax;
    y = ay;
    w = aw;
    h = ah;
    etiquette = aEtiquette;
  }

  // FONCTIONS
  void afficheText() {
    textAlign(CENTER);                // aligner le texte au centre 
    fill(255);                        // couleur du texte
    textSize(32);                     // modifie la taille du texte 
    text(etiquette, x-3, y, w, h);    // ajoute de la bordure blanche au texte
    text(etiquette, x+3, y, w, h);
    text(etiquette, x, y-3, w, h);
    text(etiquette, x, y+3, w, h);
    
    fill(#363636);                    // couleur de l'étiquette
    text(etiquette, x, y, w, h);      // affiche le texte
  }
  
  // retourne le texte de l'étiquette (pour savoir c'est quel item)
  String getEtiquette() {
    return etiquette;      // retourne un string
  }
}
