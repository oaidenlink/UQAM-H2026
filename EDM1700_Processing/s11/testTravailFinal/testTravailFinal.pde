// variaables
byte[] equipe = new byte[4];

PImage placeholder;

// setup
void setup() {
  size(1400, 800);
  placeholder = loadImage("PLACEHOLDER.png");
  
}

// draw
void draw() {
  background(#9BD8D0);
  playerBox(width*0.05, 200, placeholder);
  playerBox(width*0.3, 200, placeholder);
  playerBox(width*0.55, 200, placeholder);
  playerBox(width*0.8, 200, placeholder);
  
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
