// variaables
byte[] equipe = new byte[4];

PImage placeholder;

btnAttacks attaques;
color couleurBtn;

// setup
void setup() {
  size(1400, 800);
  placeholder = loadImage("PLACEHOLDER.png");
  couleurBtn = #9BD8D0;
  
}

// draw
void draw() {
  background(couleurBtn);
  playerBox(width*0.03, 200, placeholder);
  playerBox(width*0.26, 200, placeholder);
  playerBox(width*0.49, 200, placeholder);
  playerBox(width*0.72, 200, placeholder);
  attaques = new btnAttacks(width/2, height/2, 100, 50, "Attaque 1");
  attaques.afficher();
  
}

void playerBox(float x, float w, PImage img) {
  noStroke();
  fill(0);
  rect(x, height*0.72, w, w);
  image(img, x, height*0.72, w, w);
  attackBox(x, height*0.46, w+100, w);
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
