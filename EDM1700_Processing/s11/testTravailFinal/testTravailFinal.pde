/**
  TO DO LIST OF SHITS TO ADD TO THIS PROJECT!!!!
    ajouter des persos à sa team (add to a tableau)
    SAVE FILE TABARNAK
    afficher l'atk box seulement quand c'est le tour de ce perso
    attaques fonctionnelles
    ennemis  fonctionnels
    tour par tour shit machin
    paths et le choix des prochains niveaux
    boss fight
    getting Emmett parts
    buiding Emmett mini game
    menu / save screen / home screen / fail screen / reset / fin de jeu
    changer le curseur
    objects you can buy / win / sell
    art
    animations???
*/




// variaables
//byte[] equipe = new byte[4];

PImage placeholder;
PImage placeholder2;
PImage placeholder3;
PImage placeholder4;
PImage placeholder5;

btnAttacks attaques;
sonEquipe equipe;
color couleurBtn;


// setup
void setup() {
  size(1400, 800);
  placeholder = loadImage("PLACEHOLDER.png");
  placeholder2 = loadImage("remascend.png");
  placeholder3 = loadImage("rembonks.png");
  placeholder4 = loadImage("remsilly.png");
  placeholder5 = loadImage("remviolence.png");
  
  couleurBtn = #9BD8D0;
  
}

// draw
void draw() {
  background(couleurBtn);
  //playerBox(width*0.03, 200, placeholder5);
  //playerBox(width*0.26, 200, placeholder2);
  //playerBox(width*0.49, 200, placeholder3);
  //playerBox(width*0.72, 200, placeholder4);
  attaques = new btnAttacks(width/2, height/2, 100, 50, "Attaque 1");
  attaques.afficher();
  equipe = new sonEquipe(width*0.03, height*0.72, 200.0, placeholder5);
  equipe.afficher();
  
}

void afficheAtkBox() {
  
}

void attackBox(float x, float y, float w, float h) {
  fill(255);
  stroke(0);
  rect(x, y, w, h);
}

void mousePressed() {
  //si le bouton est cliqué, changez couleurFond
  if (attaques.estClique()) {
    couleurBtn = color(random(255), random(255), random(255));
    attaques.couleurBtn(true);
  }
}
