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
