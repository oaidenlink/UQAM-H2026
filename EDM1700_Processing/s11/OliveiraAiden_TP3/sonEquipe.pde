class sonEquipe {
  
  // VARIABLES
  float x;                 //position en x
  float y;                 //position en y
  float w;                 //largeur + hauteur
  PImage icon;             // image du perso
  String name;             //texte qui s'affiche
  
  // CONSTRUCTEUR
  sonEquipe(float ax, float ay, float aw, PImage aIcon, String aName) {
    x = ax;
    y = ay;
    w = aw;
    icon = aIcon;
    name = aName;
  }
  
  // FONCTIONS 
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
