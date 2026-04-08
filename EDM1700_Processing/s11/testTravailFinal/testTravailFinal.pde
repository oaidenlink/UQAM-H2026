/**
   TO DO LIST OF SHITS TO ADD TO THIS PROJECT!!!!
 SAVE FILE TABARNAK
 attaques fonctionnelles
 ennemis  fonctionnels
 tour par tour shit machin
 paths et le choix des prochains niveaux
 boss fight
 getting Emmett parts
 building Emmett mini game
 menu / save screen / home screen / fail screen / reset / fin de jeu
 changer le curseur
 objects you can buy / win / sell
 art
 animations???
*/




// variaables
//byte[] equipe = new byte[4];
sonEquipe[] team = new sonEquipe[4];
//sonEquipe equipe;

PImage placeholder1;
PImage placeholder2;
PImage placeholder3;
PImage placeholder4;
PImage placeholder5;
PImage enemyPlaceholder;

PImage MainCharacter;
PImage Teammate1;
PImage Teammate2;
PImage Teammate3;
PImage Enemy;

btnAttacks attaques; // test one
afficherTexte afficherHpLexie; // test???
afficherTexte afficherHpTeam1; // test???
afficherTexte afficherHpTeam2; // test???
afficherTexte afficherHpTeam3; // test???

btnAttacks LexieAtk1;
btnAttacks LexieAtk2;
btnAttacks LexieAtk3;
boolean isLexieAtk = false;
int hpLexie = 10;
int currentHpLexie;
int atkLexie =  4;
String txtHpLexie;

btnAttacks Teammate1Atk1;
btnAttacks Teammate1Atk2;
btnAttacks Teammate1Atk3;
boolean isTeammateAtk1 = false;
int hpTeammate1 = 12;
int currentHpTeammate1;
int atkTeammate1;
String txtHpTeam1;

btnAttacks Teammate2Atk1;
btnAttacks Teammate2Atk2;
btnAttacks Teammate2Atk3;
boolean isTeammateAtk2 = false;
int hpTeammate2 = 10;
int currentHpTeammate2;
int atkTeammate2;
String txtHpTeam2;

btnAttacks Teammate3Atk1;
btnAttacks Teammate3Atk2;
btnAttacks Teammate3Atk3;
boolean isTeammateAtk3 = false;
int hpTeammate3 = 14;
int currentHpTeammate3;
int atkTeammate3;
String txtHpTeam3;

boolean isEnnemyAtk = false;
int hpEnemy;
int currentHpEnemy = hpEnemy;
int atkEnemy;

color couleurBtn;

int teamMember = 1;
int fightRotationNb = 1;
String turnCurrentAtk;
int turnCurrentDmg;

boolean newTeammates = true;



/////////////////////////////////////////////////////////////////////////////////

// setup
void setup() {
  size(1400, 800);
  placeholder1 = loadImage("PLACEHOLDER.png");
  placeholder2 = loadImage("remascend.png");
  placeholder3 = loadImage("rembonks.png");
  placeholder4 = loadImage("remsilly.png");
  placeholder5 = loadImage("remviolence.png");
  enemyPlaceholder = loadImage("DynamoWee.png");

  couleurBtn = #9BD8D0;
  
  
  
  
  currentHpLexie = hpLexie;
  txtHpLexie = currentHpLexie + "/" + hpLexie;
  
  currentHpTeammate1 = hpTeammate1;
  txtHpTeam1 = currentHpTeammate1 + "/" + hpTeammate1;
  
  currentHpTeammate2 = hpTeammate2;
  txtHpTeam2 = currentHpTeammate2 + "/" + hpTeammate2;
  
  currentHpTeammate3 = hpTeammate3;
  txtHpTeam3 = currentHpTeammate3 + "/" + hpTeammate3;
  
  
  

  team[0] = new sonEquipe(width*0.03, height*0.72, 200.0, placeholder5);
  attaques = new btnAttacks(width/3, height/2-200, 100, 50, "Attaque 1");

  LexieAtk1 = new btnAttacks(width*0.17, height*0.51, 170, 50, "Lexie Attaque");
  LexieAtk2 = new btnAttacks(width*0.17, height*0.585, 170, 50, "Lexie Défends");
  LexieAtk3 = new btnAttacks(width*0.17, height*0.66, 170, 50, "Lexie Power");

  Teammate1Atk1 = new btnAttacks(width*0.4, height*0.51, 170, 50, "Bro Attaque");
  Teammate1Atk2 = new btnAttacks(width*0.4, height*0.585, 170, 50, "Bro Défends");
  Teammate1Atk3 = new btnAttacks(width*0.4, height*0.66, 170, 50, "Bro Power");

  Teammate2Atk1 = new btnAttacks(width*0.63, height*0.51, 170, 50, "Granny Attaque");
  Teammate2Atk2 = new btnAttacks(width*0.63, height*0.585, 170, 50, "Granny Défends");
  Teammate2Atk3 = new btnAttacks(width*0.63, height*0.66, 170, 50, "Granny Power");

  Teammate3Atk1 = new btnAttacks(width*0.86, height*0.51, 170, 50, "Rem Attaque");
  Teammate3Atk2 = new btnAttacks(width*0.86, height*0.585, 170, 50, "Rem Défends");
  Teammate3Atk3 = new btnAttacks(width*0.86, height*0.66, 170, 50, "Rem Power");

}


////////////////////////////////////////////////////////////////////////////////////


// draw
void draw() {
  background(couleurBtn);
  attaques.afficher();

  image(enemyPlaceholder, width/2-250, height/2-250, 500, 500);
  
  for (int i = 0; i < team.length; i++) {
    if (team[i] != null) {
      team[i].afficher();
    }
  }

  if (teamMember == 4) {
    newTeammates = false;
  }

  fightRotation();

  afficherHpLexie = new afficherTexte(width*0.15, height-20, 100, 20, txtHpLexie);
  txtHpLexie = currentHpLexie + "/" + hpLexie;
  afficherHpLexie.afficheText();
  
  afficherHpTeam1 = new afficherTexte(width*0.15, height-20, 100, 20, txtHpTeam1);
  txtHpTeam1 = currentHpTeammate1 + "/" + hpTeammate1;
  afficherHpTeam1.afficheText();

}
