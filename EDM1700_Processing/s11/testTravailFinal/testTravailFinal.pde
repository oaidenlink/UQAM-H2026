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

btnAttacks LexieAtk1;
btnAttacks LexieAtk2;
btnAttacks LexieAtk3;
boolean isLexieAtk = false;
int hpLexie = 10;
int currentHpLexie;
int atkLexie =  4;

btnAttacks Teammate1Atk1;
btnAttacks Teammate1Atk2;
btnAttacks Teammate1Atk3;
boolean isTeammateAtk1 = false;
int hpTeammate1;
int currentHpTeammate1;
int atkTeammate1;

btnAttacks Teammate2Atk1;
btnAttacks Teammate2Atk2;
btnAttacks Teammate2Atk3;
boolean isTeammateAtk2 = false;
int hpTeammate2;
int currentHpTeammate2;
int atkTeammate2;

btnAttacks Teammate3Atk1;
btnAttacks Teammate3Atk2;
btnAttacks Teammate3Atk3;
boolean isTeammateAtk3 = false;
int hpTeammate3;
int currentHpTeammate3;
int atkTeammate3;

boolean isEnnemyAtk = false;
int hpEnemy;
int currentHpEnemy;
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



  if (fightRotationNb <= teamMember) {
    //println("fightRotationNb: " + fightRotationNb + " / teamMember: " + teamMember);

    if (isLexieAtk == true) {
      team[fightRotationNb-1].attackBox();
      LexieAtk1.afficher();
      LexieAtk2.afficher();
      LexieAtk3.afficher();
      turnCurrentAtk = ;
      turnCurrentAtk = atkLexie;
    }
    if (isTeammateAtk1 == true) {
      team[fightRotationNb-1].attackBox();
      Teammate1Atk1.afficher();
      Teammate1Atk2.afficher();
      Teammate1Atk3.afficher();
    }
    if (isTeammateAtk2 == true) {
      team[fightRotationNb-1].attackBox();
      Teammate2Atk1.afficher();
      Teammate2Atk2.afficher();
      Teammate2Atk3.afficher();
    }
    if (isTeammateAtk3 == true) {
      team[fightRotationNb-1].attackBox();
      Teammate3Atk1.afficher();
      Teammate3Atk2.afficher();
      Teammate3Atk3.afficher();
    }
  } else if (fightRotationNb > teamMember) { //modify this plz
    //println("C'est le tour du méchant");
    isEnnemyAtk = true;
    ennemyAttacks();
  }


  if (fightRotationNb == 1) {
    isLexieAtk = true;
  } else {
    isLexieAtk = false;
  }

  if (fightRotationNb == 2 && isEnnemyAtk == false) {
    isTeammateAtk1 = true;
  } else {
    isTeammateAtk1 = false;
  }

  if (fightRotationNb == 3 && isEnnemyAtk == false) {
    isTeammateAtk2 = true;
  } else {
    isTeammateAtk3 = false;
  }

  if (fightRotationNb == 4 && isEnnemyAtk == false) {
    isTeammateAtk3 = true;
  } else {
    isTeammateAtk3 = false;
  }
}

void ennemyAttacks() {
  int nbAtk = int(random(1, 4));
  
  if (nbAtk == 1) {
    //attaque 1
    isEnnemyAtk = false;
  } else if (nbAtk == 2) {
    //attaque 2
    isEnnemyAtk = false;
  } else {
    //attaque 3
    isEnnemyAtk = false;
  }
  
  
  if (isEnnemyAtk == false) {
    fightRotationNb = 1;
  }
}



////////////////////////////////////////////////////////////////////////////



void mousePressed() {
  //si le bouton est cliqué, changez couleurFond
  if (attaques.estClique() && newTeammates == true) {
    couleurBtn = color(random(255), random(255), random(255));
    if (teamMember == 1 && attaques.getEtiquette() == "Attaque 1") {
      Teammate1 = placeholder1;
      team[teamMember] = new sonEquipe(width*0.26, height*0.72, 200, Teammate1);
    } else if (teamMember == 2 && attaques.getEtiquette() == "Attaque 1") {
      Teammate2 = placeholder2;
      team[teamMember] = new sonEquipe(width*0.49, height*0.72, 200, Teammate2);
    } else if (teamMember == 3 && attaques.getEtiquette() == "Attaque 1") {
      Teammate3 = placeholder3;
      team[teamMember] = new sonEquipe(width*0.72, height*0.72, 200, Teammate3);
    }
    teamMember++;
  } else if (newTeammates == false) {
    //println("la team est pleine!!");
  }

  if (LexieAtk1.estClique() && isLexieAtk == true ||
    LexieAtk2.estClique() && isLexieAtk == true ||
    LexieAtk3.estClique() && isLexieAtk == true) {
      turnCurrentFight(turnCurrentAtk, turnCurrentDmg);
    
    isLexieAtk = false;
  }

  if (Teammate1Atk1.estClique() && isTeammateAtk1 == true ||
    Teammate1Atk2.estClique() && isTeammateAtk1 == true ||
    Teammate1Atk3.estClique() && isTeammateAtk1 == true) {
    fightRotationNb++;
    isTeammateAtk1 = false;
  }

  if (Teammate2Atk1.estClique() && isTeammateAtk2 == true ||
    Teammate2Atk2.estClique() && isTeammateAtk2 == true ||
    Teammate2Atk3.estClique() && isTeammateAtk2 == true) {
    fightRotationNb++;
    isTeammateAtk2 = false;
  }

  if (Teammate3Atk1.estClique() && isTeammateAtk3 == true ||
    Teammate3Atk2.estClique() && isTeammateAtk3 == true ||
    Teammate3Atk3.estClique() && isTeammateAtk3 == true) {
    fightRotationNb++;
    isTeammateAtk3 = false;
  }
}

void turnCurrentFight(String atkName, int atkDmg) {
 println("atkName: " + atkName + " + atkDmg: " + atkDmg);
 fightRotationNb++;
}
