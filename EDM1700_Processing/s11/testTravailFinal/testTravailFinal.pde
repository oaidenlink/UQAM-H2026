// variaables
byte[] fleches;

PImage placeholder;
float posX = 10;
float posY = 30;

// setup
void setup() {
  size(400, 400);
  placeholder = loadImage("PLACEHOLDER.png");
  fleches = new byte[4];
}

// draw
void draw() {
  background(#9BD8D0);
  image(placeholder, posX, posY, 50, 50);

  if (keyPressed) {
    if (key == 'w') {
      posY -= 1;
    }
    if (key == 's') {
      posY++;
    }
    if (key == 'a') {
      posX -= 1;
    }
    if (key == 'd') {
      posX++;
    }

    if (key == 'w' && key == 'd') {
      posY -= 1;
      posX++;
    }
    if (key == 'w' && key == 'a') {
      posY -= 1;
      posX -= 1;
    }
    if (key == 's' && key == 'd') {
      posY++;
      posX++;
    }
    if (key == 's' && key == 'a') {
      posY++;
      posX -= 1;
    }
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP || key == 'w') {
      fleches[0] = 1;
    }
    if (keyCode == DOWN || key == 's') {
      fleches[1] = 1;
    }
    if (keyCode == RIGHT || key == 'd') {
      fleches[2] = 1;
    }
    if (keyCode == LEFT || key == 'a') {
      fleches[3] = 1;
    }
    println(fleches);
  } else {
    println("Pressed " + key);
  }
}

void keyReleased() {
  if (key == CODED) {
    if (keyCode == UP || key == 'w') {
      fleches[0] = 0;
    }
    if (keyCode == DOWN || key == 's') {
      fleches[1] = 0;
    }
    if (keyCode == RIGHT || key == 'd') {
      fleches[2] = 0;
    }
    if (keyCode == LEFT || key == 'a') {
      fleches[3] = 0;
    }
    println(fleches);
  } else {
    println("Released " + key);
  }
}
