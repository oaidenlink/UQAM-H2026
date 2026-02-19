/*
 * Titre: EDM1700 Exercice 4: "Mini-jeu"
 * Auteur.trice: Aiden Oliveira
 * Version: 1.0
 * Instructions: Suivez la balle et ne la laissez pas partir!!
 * Notes:
 */

// VARIABLES - - - - - - - - - - - - - - - - - - - - - - - - - - - -
color bgColor = #BCF5DC;
color circleCol = #FF5FB7;
color circleColWrong = #43051C;
color txtCol = #465F54;

String txtRestart = "press any key to restart";

float distSouris;

final float BASE_CIRCLE_X = 300;
final float BASE_CIRCLE_Y = 10;
final float BASE_CIRCLE_SIZE = 10;

float circleX = 300;
float circleY = 10;
float circleSize = 10;
float circleSpeedX = 2;
float circleSpeedY = 2;

// SETUP - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
void setup() {
  size(600, 800);
  background(bgColor);
}

// DRAW - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
void draw() {
  distSouris = dist(mouseX, mouseY, circleX, circleY);
  background(bgColor);


  if (distSouris <= circleSize) {
    circleSize += 0.3;
    fill(circleCol);
  } else if (distSouris >= circleSize) {
    circleSize -= 0.1;
    fill(circleColWrong);
  }

  if (circleSize <= 0) {
    noFill();
    rectMode(CENTER);
    textSize(44);
    textAlign(CENTER);
    text(txtRestart, width/2, height/2, 400, 500);

    if (keyPressed) {
      textSize(0);
      circleX = BASE_CIRCLE_X;
      circleY = BASE_CIRCLE_Y;
      circleSize = BASE_CIRCLE_SIZE;
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
 * Implémenter le changement de difficulté / niveau
 Lorsque la taille maximale est atteinte, la couleur du cercle change pour une
 couleur aléatoire, la taille du cercle revient à sa valeur de départ et la
 vitesse de déplacement du cercle s’accélère.
 
 Déterminer une valeur maximale de taille de balle et créer la condition qui
 fait en sorte que si elle est atteinte la couleur de la balle change pour une
 couleur aléatoire.
 
 Indice : vous aurez besoin de créer une variable de type color et d’utiliser
 la fonction random() pour faire varier les valeurs R, G, B.
 
 Ajouter une ligne de code dans la condition que l’on vient de créer qui permet
 de faire en sorte que le cercle revienne à sa taille initiale en même temps
 qu’il change de couleur afin de signifier visuellement le changement de niveau.
 
 Créer les conditions imbriquées (à l’intérieur de celle que l’on a créée à
 l’étape 1) qui permettent de faire en sorte que la vitesse de la balle augmente
 quand on change de niveau sans changer de direction.
 
 On a besoin de changer la vitesse de déplacement du cercle en X et en Y, mais
 on veut garder l’orientation positive ou négative pour que le rebondissement
 fonctionne toujours. Si la vitesse du cercle X va vers la droite (positive)
 alors on veut ajouter une valeur (ex: +0.5). Si la vitesse du cercle  X va vers
 la gauche (négative) alors on veut soustraire une valeur (ex: -0.5). Même chose
 pour la vitesse du cercle Y et le haut/bas.
 
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
