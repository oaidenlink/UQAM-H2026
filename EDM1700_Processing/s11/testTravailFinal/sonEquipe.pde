class sonEquipe {
  // variables
  float x;
  float y;
  float w;
  PImage icon;
  
  sonEquipe(float ax, float ay, float aw, PImage aIcon) {
    x = ax;
    y = ay;
    w = aw;
    icon = aIcon;
  }
  
  // 3. MÉTHODE — afficher le bouton
  void afficher() {
    noStroke();
    fill(0);
    rect(x, y, w, w);
    image(icon, x, y, w, w);
    //attackBox(x, height*0.46, w+100, w);
  }
  
  void attackBox(float x, float y, float w, float h) {
    fill(255);
    stroke(0);
    rect(x, y, w, h);
  }
  
  
}
