class buildEmmett {
  // variables
  float x;
  float y;
  float w;
  float h;
  PImage bodyPart;
  
  
  
  buildEmmett(float ax, float ay, float aw, float ah, PImage aBodyPart) {
    x = ax;
    y = ay;
    w = aw;
    h = ah;
    bodyPart = aBodyPart;
  }
  
  void afficher() {
    noStroke();
    image(bodyPart, x, y, w, h);
  }  
  
}
