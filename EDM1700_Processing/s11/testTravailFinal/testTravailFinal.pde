/**
   TO DO LIST OF SHITS TO ADD TO THIS PROJECT!!!!
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
 SAVE FILE TABARNAK
*/




// variaables
JSONArray characters;
sonEquipe[] team = new sonEquipe[4];

PImage placeholder1;
PImage placeholder2;
PImage placeholder3;
PImage placeholder4;
PImage placeholder5;

PImage MainCharacter;
PImage Teammate1;
PImage Teammate2;
PImage Teammate3;
PImage Enemy;

btnAttacks ajouter; // test one
btnAttacks refuser; // test one
afficherTexte afficherHpLexie; // test???
afficherTexte afficherHpTeam1; // test???
afficherTexte afficherHpTeam2; // test???
afficherTexte afficherHpTeam3; // test???
afficherTexte afficherHpEnemy;

btnAttacks LexieAtk1;
btnAttacks LexieAtk2;
btnAttacks LexieAtk3;
boolean isLexieAtk = false;
int hpLexie = 10;
int currentHpLexie;
int atkLexie =  4;
String txtHpLexie;

btnAttacks Teammate1Atk;
btnAttacks Teammate1Skill;
btnAttacks Teammate1Ult;
boolean isTeammateAtk1 = false;
int hpTeammate1;
int currentHpTeammate1;
int atkTeammate1;
String txtSkillTeam1;
String txtUltTeam1;
String txtHpTeam1;

btnAttacks Teammate2Atk;
btnAttacks Teammate2Skill;
btnAttacks Teammate2Ult;
boolean isTeammateAtk2 = false;
int hpTeammate2;
int currentHpTeammate2;
int atkTeammate2;
String txtSkillTeam2;
String txtUltTeam2;
String txtHpTeam2;

btnAttacks Teammate3Atk;
btnAttacks Teammate3Skill;
btnAttacks Teammate3Ult;
boolean isTeammateAtk3 = false;
int hpTeammate3;
int currentHpTeammate3;
int atkTeammate3;
String txtSkillTeam3;
String txtUltTeam3;
String txtHpTeam3;

boolean isEnnemyAtk = false;
int hpEnemy;
int currentHpEnemy;
int atkEnemy;
String txtAttack = "ATTAQUE";
String txtSkill;
String txtUlt;
String txtHpEnemy;

boolean isEnemyDead = false;

color couleurBtn;

int teamMember = 1;
int fightRotationNb = 1;
String turnCurrentAtk;
int turnCurrentDmg;
int numRandom;
boolean isChoosing = false;

boolean newTeammates = true;



/////////////////////////////////////////////////////////////////////////////////

// setup
void setup() {
  size(1400, 800);
  init();

  couleurBtn = #9BD8D0;
  
  team[0] = new sonEquipe(width*0.03, height*0.72, 200.0, placeholder5);
  
  ajouter = new btnAttacks(width*0.3, height/2-200, 150, 50, "Ajouter à l'équipe?");
  refuser = new btnAttacks(width*0.7, height/2-200, 150, 50, "Refuser de l'aider");

  newEnemy();
}


////////////////////////////////////////////////////////////////////////////////////


// draw
void draw() {
  background(couleurBtn);
  
  if (isChoosing == true) {
    ajouter.afficher();
    refuser.afficher();
  }
  
  image(Enemy, width/2-250, height/2-250, 500, 500);
  
  for (int i = 0; i < team.length; i++) {
    if (team[i] != null) {
      team[i].afficher();
    }
  }

  if (teamMember == 4) {
    newTeammates = false;
  }

  fightRotation();
  manageHP();
  
  

}
