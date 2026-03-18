/* Le but de ce défi est de vous familiariser 
 * avec la programmation orientée objet. 
 *
 * Il vous faut remplir les zonnes manquantes dans le code 
 * pour afficher un bouton cliquable qui permet de changer
 * la couleur de fond du sketch pour une couleur aléatoire. 
 *
 * Trop facile ? · Utilisez une démarche orientée objet pour toujours
 *                 placer votre bouton au centre du sketch peu importe sa taille. 
 *               · Créez différents boutons, donnez leur un style un peu différent...etc  
 *               · Faites en sorte que votre bouton affiche une image ou déclenche
 *                 autre chose / ajoutez d'autres méthodes / plusieurs boutons. 
 */
 
Bouton monBouton;
color couleurFond;

void setup() {
  size(400, 400);
  couleurFond = color(200);
  
  monBouton = new Bouton(width/2, height/2, 100, 50, "Ta mere");
  // créez un objet Bouton ici
  // conseil : commencez avec des nombres magiques
}

void draw() {
  background(couleurFond);
  monBouton.afficher();
  // appelez la méthode pour afficher votre bouton
}

void mousePressed() {
  // si le bouton est cliqué, changez couleurFond
  // pour une couleur random
}
