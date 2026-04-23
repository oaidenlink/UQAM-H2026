/// - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// AFFICHE LE TEXTE (GÉNÉRAL)
/// - - - - - - - - - - - - - - - - - - - - - - - - - - - 
class afficherTexte {

  // VARIABLES
  float x;                 //position en x
  float y;                 //position en y
  float w;                 //largeur
  float h;                 //hauteur
  String etiquette;        //texte qui s'affiche

  // CONSTRUCTEUR
  afficherTexte(float ax, float ay, float aw, float ah, String aEtiquette) {
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
    textSize(48);                     // modifie la taille du texte 
    text(etiquette, x-3, y);          // ajoute de la bordure blanche au texte
    text(etiquette, x+3, y);
    text(etiquette, x, y-3);
    text(etiquette, x, y+3);
    
    fill(0);                    // couleur de l'étiquette
    text(etiquette, x, y);      // affiche le texte
  }
  
  // retourne le texte de l'étiquette (pour savoir c'est quel item)
  String getEtiquette() {
    return etiquette;      // retourne un string
  }
}
