/*
 * Titre: EDM1700 Exercice 4: "Mini-jeu"
 * Auteur.trice: Aiden Oliveira
 * Version: 1.0
 * Instructions: Suivez la balle et ne la laissez pas partir!!
 * Notes:
 */

// VARIABLES - - - - - - - - - - - - - - - - - - - - - - - - - - - -
color bgColor = #E8FAF9;
float circleColR = 255;
float circleColG = 93;
float circleColB = 198;
color circleColWrong = #43051C;
color txtCol = #465F54;

String txtRestart = "Appuyez sur une touche pour recommencer!";
String txtLvlUp = "Niveau suivant!";

float distSouris;

final float BASE_CIRCLE_X = 300;
final float BASE_CIRCLE_Y = 50;
final float BASE_CIRCLE_SIZE = 20;
final float BASE_CIRCLE_SPEED = 2;
final float MAX_SIZE = 100;

float circleX;
float circleY;
float circleSize;
float circleSpeedX = 2;
float circleSpeedY = 2;

int time;

// SETUP - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
void setup() {
  size(600, 800);
  background(bgColor);
  circleX = BASE_CIRCLE_X;
  circleY = BASE_CIRCLE_Y;
  circleSize = BASE_CIRCLE_SIZE;
}

// DRAW - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
void draw() {
  distSouris = dist(mouseX, mouseY, circleX, circleY);
  background(bgColor);

  println(time);

  if (circleSize >= MAX_SIZE) {
    time = millis();

    //noFill();

    circleSize = BASE_CIRCLE_SIZE;
    circleColR = random(10, 240);
    circleColG = random(10, 240);
    circleColB = random(10, 240);

    if (circleSpeedX <= 0) {
      circleSpeedX -= 0.5;
    } else if (circleSpeedX > 0) {
      circleSpeedX += 0.5;
    }

    if (circleSpeedY <= 0) {
      circleSpeedY -= 0.5;
    } else if (circleSpeedY > 0) {
      circleSpeedY += 0.5;
    }
  }
  
  if ( millis() <= time + 30000) {
      fill(0);
      rectMode(CENTER);
      textSize(44);
      textAlign(CENTER);
      text(txtLvlUp, width/2, height/2, 400, 500);
    }


  if (distSouris <= circleSize) {
    circleSize += 0.3;
    fill(circleColR, circleColB, circleColB);
  } else if (distSouris >= circleSize) {
    circleSize -= 0.1;
    fill(circleColR, circleColB, circleColB);
  }

  if (circleSize <= 0) {
    fill(0);
    rectMode(CENTER);
    textSize(44);
    textAlign(CENTER);
    text(txtRestart, width/2, height/2, 400, 500);

    noFill();

    if (keyPressed) {
      textSize(0);
      circleX = BASE_CIRCLE_X;
      circleY = BASE_CIRCLE_Y;
      circleSize = BASE_CIRCLE_SIZE;
      circleSpeedX = BASE_CIRCLE_SPEED;
      circleSpeedY = BASE_CIRCLE_SPEED;
    }
  }

  noStroke();
  circle(circleX, circleY, circleSize*2);
  circleX += circleSpeedX;
  circleY += circleSpeedY;

  // rebondissement X
  if (circleX-circleSize < 0 || circleX+circleSize > width) {
    circleSpeedX = -circleSpeedX; // inverser
  }

  // rebondissement Y
  if (circleY-circleSize < 0 || circleY+circleSize > height) {
    circleSpeedY = -circleSpeedY; // inverser
  }
}

/* - - WHAT'S LEFT TO DO - - - -
 
 Astuce : il est aussi possible d'utiliser une autre opération pour le faire
 en 2 lignes de code sans les conditions.. L'as tu ?
 
 Optionnel :
 
 Ajouter du texte pour indiquer quand on a perdu et ce qu’il faut faire
 
 Valeurs suggérées (pour vous aider mais libre à vous de les ajuster) :
 - Taille initiale : 50
 - Taille minimale : 10
 - Taille maximale : 100
 - Vitesse initiale : 3
 - Accélération par niveau : 0.5
 - Augmentation de taille : +0.2
 - Diminution de taille : -0.1
 
 Implanter ce jeu nécessitera obligatoirement l'utilisation de conditions,
 des variables intégrées telles mouseX, mouseY, keyPressed, etc.
 
 */
