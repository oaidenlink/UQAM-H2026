void ennemyAttacks() {
  int nbAtk = int(random(1, 4));
  
  String testEnemyAtk;
  turnCurrentDmg = atkEnemy;
  
  if (nbAtk == 1) {
    //attaque 1
    testEnemyAtk = "Atk 1 ennemi";
    turnCurrentFight(testEnemyAtk, turnCurrentDmg);
    isEnnemyAtk = false;
  } else if (nbAtk == 2) {
    //attaque 2
    testEnemyAtk = "Atk 2 ennemi";
    turnCurrentFight(testEnemyAtk, turnCurrentDmg);
    isEnnemyAtk = false;
  } else {
    //attaque 3
    testEnemyAtk = "Atk 3 ennemi";
    turnCurrentFight(testEnemyAtk, turnCurrentDmg);
    isEnnemyAtk = false;
  }
  
  
  if (isEnnemyAtk == false) {
    fightRotationNb = 1;
  }
}

void newEnemy() {
  int num = int(random(1, 7));
  
  if (num == 1) {
    Enemy = placeholder1;
  } else if (num == 2) {
    Enemy = placeholder2;
  } else if (num == 3) {
    Enemy = placeholder3;
  } else if (num == 4) {
    Enemy = placeholder4;
  } else if (num == 5) {
    Enemy = placeholder5;
  } else if (num == 6) {
    Enemy = Dynamo;
  }
  
  hpEnemy = 20;
  currentHpEnemy = hpEnemy;
  fightRotationNb = 1;
}
