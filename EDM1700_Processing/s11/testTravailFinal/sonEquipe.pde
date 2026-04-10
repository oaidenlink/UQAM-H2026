class sonEquipe {
  // variables
  float x;
  float y;
  float w;
  PImage icon;
  String name;
  
  sonEquipe(float ax, float ay, float aw, PImage aIcon, String aName) {
    x = ax;
    y = ay;
    w = aw;
    icon = aIcon;
    name = aName;
  }
  
  // 3. MÉTHODE — afficher le bouton
  void afficher() {
    noStroke();
    fill(0);
    rect(x, y, w, w);
    image(icon, x, y, w, w);
  }
  
  //void attackBox() {
  //  attackBox(x, height*0.46, w+100, w);
  //}
  //btnAttacks atk1
  void attackBox() {
    fill(255);
    stroke(0);
    rect(x, height*0.46, w+100, w);
    //atk1.afficher();
  }
  
  String getNom() {
    return name;
  }
  
  
}
