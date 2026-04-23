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
  // affiche la boite du personnage
  void afficher() {
    noStroke();                // enlève la bordure
    fill(0);                   // couleur noire
    rect(x, y, w, w);          // affiche un carré
    image(icon, x, y, w, w);   // affiche l'image
  }
  
  // affiche la bite d'attaque quand c'est son tour
  void attackBox() {
    fill(255);                        // couleur blanc
    stroke(0);                        // bordure noire
    rect(x, height*0.46, w+100, w);   // rectangle de la boite
  }
  
  // retourne le nom donné
  String getNom() {
    return name;    // retourne un string
  }
  
  
}
