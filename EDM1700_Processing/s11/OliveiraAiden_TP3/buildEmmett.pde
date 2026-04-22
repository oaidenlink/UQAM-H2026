class buildEmmett {
  
  // VARIABLES
  float x;                 //position en x
  float y;                 //position en y
  float w;                 //largeur
  float h;                 //hauteur
  PImage bodyPart;         // images du corps d'Emmett
  
  // CONSTRUCTEUR
  buildEmmett(float ax, float ay, float aw, float ah, PImage aBodyPart) {
    x = ax;
    y = ay;
    w = aw;
    h = ah;
    bodyPart = aBodyPart;
  }
  
  // FONCTIONS 
  void afficher() {
    noStroke();                    // enlève la bordure
    image(bodyPart, x, y, w, h);   // affiche l'image
  }  
  
}
