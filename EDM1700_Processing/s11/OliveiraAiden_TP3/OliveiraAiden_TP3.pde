/*
 * Titre: EDM1700 Travail final
 * Auteur.trice: Aiden Oliveira
 * Version: 1.0
 * Instructions: Commencez le jeu en appuyant sur le bouton "jouer" en haut,
                 puis aidez Lexie a réparer son ami robot, Emmett!!
 * Bugs: IL MANQUE DES COMMENTAIRES!!!! DÉSOLÉ LA VIE C'EST PAS FACILE ;-;
         NE PAS SPEEDRUN LE JEU!! Ça fait crash le jeu. En plus, pour une 
         raison que j'ignore, le jeu décide de ne plus loader les images et 
         tout meurt. Je n'ai jamais trouver la source du bug, car a chaque 
         fois le message d'erreur est différent et l'emplacement de l'erreur 
         est différente :(
 */
 

// VARIABLES - - - - - - - - - - - - - - - - - - - - - - - - - - - -
JSONArray characters;                            // variable pour le json des personnages

sonEquipe[] team = new sonEquipe[4];             // tableau pour l'équipe de Lexie
buildEmmett[] pieceEmmett = new buildEmmett[6];  // tableau pour les pièces d'Emmett

  // IMAGES
PImage background;      // variable pour l'image de fond
PImage bgMenu;          // variable pour l'image de Menu
PImage bgBadEnd;        // variable pour l'image de la mauvaise fin

PImage Lexie;           // variable pour l'image de Lexie

PImage EmmettBlueprint; // variable pour l'image de "base" d'Emmett
PImage EmmettHead;      // variable pour l'image de la tête
PImage EmmettLArm;      // variable pour l'image de son bras
PImage EmmettRArm;      // variable pour l'image de son bras
PImage EmmettTorso;     // variable pour l'image de son torse
PImage EmmettLLeg;      // variable pour l'image de sa jambe
PImage EmmettRLeg;      // variable pour l'image de sa jambe

PImage MainCharacter;   // variable pour l'image du personnage principal pour le tableau de l'équipe (Lexie)
PImage Teammate1;       // variable pour l'image du premier teammate pour le tableau de l'équipe
PImage Teammate2;       // variable pour l'image du deuxième teammate pour le tableau de l'équipe
PImage Teammate3;       // variable pour l'image du troisième teammate pour le tableau de l'équipe
PImage Enemy;           // variable pour l'image de l'ennemi
PImage Granny;          // variable pour l'image de kaboom de la grand-mère

  // BOUTON
btnAttacks ajouter;     // variable pour le bouton pour ajouter a l'équipe
btnAttacks refuser;     // variable pour le bouton pour démonter un robot
btnAttacks laFin;       // variable pour le bouton pour la fin du jeu
btnAttacks btnMenu;     // variable pour le bouton du menu

  // AFFICHER LES TEXTES
afficherTexte afficherHpLexie;   // variable pour afficher la vie de Lexie
afficherTexte afficherHpTeam1;   // variable pour afficher la vie du teammate 1
afficherTexte afficherHpTeam2;   // variable pour afficher la vie du teammate 2
afficherTexte afficherHpTeam3;   // variable pour afficher la vie du teammate 3
afficherTexte afficherHpEnemy;   // variable pour afficher la vie de l'ennemi

afficherFightTxt afficherFightText;      // variable pour afficher le texte du combat
String texteDeFight;                     // variable pour le string
afficherFightTxt afficherFightTextEnemy; // variable pour afficher le texte du combat ennemi
String texteDeFightEnemy;                // variable pour le string
afficherFightTxt afficherWarning;        // variable pour afficher l'annonce de mort de chaque ennemi
String texteWarning;                     // variable pour le string

  // STUFF DE LEXIE
btnAttacks LexieAtk1;          // variable pour afficher l'attaque
btnAttacks LexieAtk2;          // variable pour afficher le skill
btnAttacks LexieAtk3;          // variable pour afficher l'ultimate
boolean isLexieAtk = false;    // variable pour afficher le bool d'attaque
boolean isLexieDead = false;   // variable pour afficher le bool de mort
int hpLexie = 35;              // variable pour afficher la vie totale
int currentHpLexie;            // variable pour afficher la vie actuelle
int atkLexie =  4;             // variable pour afficher l'attaque
String txtHpLexie;             // variable pour afficher le texte de la vie actuelle

  // STUFF DU PREMIER TEAMMATE
btnAttacks Teammate1Atk;            // variable pour afficher l'attaque
btnAttacks Teammate1Skill;          // variable pour afficher le skill
btnAttacks Teammate1Ult;            // variable pour afficher l'ultimate
boolean isTeammateAtk1 = false;     // variable pour afficher le bool d'attaque
boolean isTeam1Dead = false;        // variable pour afficher le bool de mort
int hpTeammate1;                    // variable pour afficher la vie totale
int currentHpTeammate1;             // variable pour afficher la vie actuelle
int atkTeammate1;                   // variable pour afficher l'attaque
String txtSkillTeam1;               // variable pour afficher le texte
String txtUltTeam1;                 // variable pour afficher le texte
String txtHpTeam1;                  // variable pour afficher le texte

  // STUFF DU DEUXIÈME TEAMMATE
btnAttacks Teammate2Atk;            // variable pour afficher l'attaque
btnAttacks Teammate2Skill;          // variable pour afficher le skill
btnAttacks Teammate2Ult;            // variable pour afficher l'ultimate
boolean isTeammateAtk2 = false;     // variable pour afficher le bool d'attaque
boolean isTeam2Dead = false;        // variable pour afficher le bool de mort
int hpTeammate2;                    // variable pour afficher la vie totale
int currentHpTeammate2;             // variable pour afficher la vie actuelle
int atkTeammate2;                   // variable pour afficher l'attaque
String txtSkillTeam2;               // variable pour afficher le texte
String txtUltTeam2;                 // variable pour afficher le texte
String txtHpTeam2;                  // variable pour afficher le texte

  // STUFF DU TROISIÈME TEAMMATE
btnAttacks Teammate3Atk;            // variable pour afficher l'attaque
btnAttacks Teammate3Skill;          // variable pour afficher le skill
btnAttacks Teammate3Ult;            // variable pour afficher l'ultimate
boolean isTeammateAtk3 = false;     // variable pour afficher le bool d'attaque
boolean isTeam3Dead = false;        // variable pour afficher le bool de mort
int hpTeammate3;                    // variable pour afficher la vie totale
int currentHpTeammate3;             // variable pour afficher la vie actuelle
int atkTeammate3;                   // variable pour afficher l'attaque
String txtSkillTeam3;               // variable pour afficher le texte
String txtUltTeam3;                 // variable pour afficher le texte
String txtHpTeam3;                  // variable pour afficher le texte

  // STUFF DE L'ENNEMI
boolean isEnnemyAtk = false;    // variable pour afficher le bool d'attaque
boolean isEnemyDead = false;    // variable pour afficher le bool de mort
int hpEnemy;                    // variable pour afficher la vie totale
int currentHpEnemy;             // variable pour afficher la vie actuelle
int atkEnemy;                   // variable pour afficher l'attaque
String txtAttack = "ATTAQUE";   // variable pour afficher le texte
String txtSkill;                // variable pour afficher le texte
String txtUlt;                  // variable pour afficher le texte
String txtHpEnemy;              // variable pour afficher le texte

  // AUTRES VARIABLES
color couleurBtn;    // couleur du fond

int teamMember = 1;        // nombre actuel de personne dans la team
int fightRotationNb = 1;   // nombre actuel du tour d'attaque
int turnCurrentDmg;        // nombre de dégat actuel
int numRandom;             // nombre aléatoire pour les personnages
int emmettNbPieces = 1;    // nombre de pièces d'Emmett 

float opacity = 0;    // opacité du fond de la fin

String turnCurrentAtk;    // texte attaque actuelle

boolean isChoosing = false;        // bool pour choisir si on veux que l'ennemi rejoins notre équipe
boolean newTeammates = true;       // bool pour voir si on peut avoir des nouveau teammates
boolean isLaFin = false;           // bool pour savoir si c'est la fin
boolean isWin = false;             // bool pour savoir si on a gagner
boolean isTextBoxAffiche = false;  // bool pour savoir si on affiche le texte
boolean isMenuAffiche = true;      // bool pour afficher le menu principal

PFont fontTitre;    // police d'écriture du titre
PFont fontGen;      // police d'écriture générale

// Variables pour afficher un message pendant x nombre de secondes
  // SOURCE: https://forum.processing.org/two/discussion/8084/how-do-i-display-a-message-for-a-few-seconds.html
boolean displayMessage = false;
boolean displayMessageEnemy = false;
int startTime;
final int DISPLAY_DURATION = 3000; // in milliseconds = 3s


// SETUP - - - - - - - - - - - - - - - - - - - - - - - - - - - -
void setup() {
  size(1400, 800);  // taille du canvas

  newEnemy();  // ajoute un nouvel ennemi
  init();      // initialise le projet

  couleurBtn = #9BD8D0;  // couleur du fond, dont je ne me sert pas, mais le projet crash quand je le supprime.... 

  team[0] = new sonEquipe(width*0.03, height*0.72, 200.0, MainCharacter, "Lexie");        // création de l'équipe de Lexie (avec Lexie comme premier perso)
  pieceEmmett[0] = new buildEmmett(100, 100, 200, 400, EmmettHead);                       // première pièce d'Emmett acquise: sa tête
  
  ajouter = new btnAttacks(width*0.3, height/2-200, 170, 50, "Ajouter à l'équipe?", "");  // bouton pour ajouter a l'équipe
  refuser = new btnAttacks(width*0.7, height/2-200, 150, 50, "Démonter!!", "");           // bouton pour démonter l'ennmi
  btnMenu = new btnAttacks(width/2, height*0.9, 150, 50, "JOUER!", "");                   // affiche le bouton du menu principal
}

// DRAW - - - - - - - - - - - - - - - - - - - - - - - - - - - -
void draw() {
  // si le menu est true, affiche le menu principal
  if (isMenuAffiche == true) {
    MainMenu();
  } else if (isMenuAffiche == false) { // ... sinon

    JSONArray Characters = loadJSONArray("./json/characters.json");    // load le fichier json des personnages
    JSONObject selectChara = Characters.getJSONObject(numRandom);      // va chercher les infos du json selon son num random

    image(background, 0, 0);  // affiche le background
    
    color(0);                            // mets la couleur a noir
    rect(width*0.7, 50, 400, height/2);  // affiche le carré qui sert de zone de texte pour les combats

    // Affiche du texte seulement pendant 3 secondes
      // SOURCE: https://forum.processing.org/two/discussion/8084/how-do-i-display-a-message-for-a-few-seconds.html
    if (displayMessage == true) {
      fill(255);
      afficherFightText = new afficherFightTxt(width*0.71, 100, 370, 200, texteDeFight);
      afficherFightText.afficheText();
      if (millis() - startTime > DISPLAY_DURATION) {
        // Stop displaying the message, thus resume the ball moving
        displayMessage = false;
      }
    }
    if (displayMessageEnemy == true) {
      fill(#5F5F5F);
      afficherFightTextEnemy = new afficherFightTxt(width*0.71, 270, 370, 200, texteDeFightEnemy);
      afficherFightTextEnemy.afficheText();
      if (millis() - startTime > DISPLAY_DURATION) {
        displayMessageEnemy = false;
      }
    }

    image(Enemy, width/2-250, height/2-250, 500, 500);  // affiche l'image de l'ennemi
    image(EmmettBlueprint, 100, 100, 200, 400);         // affiche l'image de ref d'Emmett

    // loop afin d'afficher la team de Lexie (selon le nb de personnages dans la team)
    for (int i = 0; i < team.length; i++) {
      if (team[i] != null) {
        team[i].afficher();
      }
    }
    
    // loop afin d'afficher le nb de pièce d'Emmett
    for (int i = 0; i < pieceEmmett.length; i++) {
      if (pieceEmmett[i] != null) {
        pieceEmmett[i].afficher();
      }
    }

    // mets false si le nb de personnages dans la team a attein le max
    if (teamMember == 4) {
      newTeammates = false;
    }

    fightRotation();    // appelle la fonction pour la rotation du combat
    manageHP();         // appelle la fonction qui suis la vie des persos

    // conditions pour ganger
    if (emmettNbPieces >= 6) {  // si on a les 6 morceau d'Emmett
      isWin = true;             // on gagne!
      opacity = 255;            // affice le fond blanc
      Win();                    // appelle la fonction de win
    }

    // affichage des boutons ajouter/démonter les ennemis selon plusieurs conditions
    if (selectChara.getBoolean("isClaimable") == true && isChoosing == true && newTeammates == true && isLaFin == false) {
      isTextBoxAffiche = false;  // enleve la boite de texte
      ajouter.afficher();        // affiche le bouton
      refuser.afficher();        // affiche le bouton
    } else if (selectChara.getBoolean("isClaimable") == false && isLaFin == false || isChoosing == true && newTeammates == false && isLaFin == false) {
      isTextBoxAffiche = false;  // enleve la boite de texte
      refuser.afficher();        // affiche le bouton
    }
  }
}
