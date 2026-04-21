class tableauObj {
  // variables
  float x;
  float y;
  float w;
  PImage objet;
  
  
  
  tableauObj(float ax, float ay, float aw, PImage aObjet) {
    x = ax;
    y = ay;
    w = aw;
    objet = aObjet;
  }
  
  void afficher() {
    image(objet, x, y, w, w);
  }  
  
}
