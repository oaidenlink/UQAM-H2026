void ennemyAttacks() {
  int nbAtk = int(random(1, 4));
  String testEnemyAtk;

  JSONArray Characters = loadJSONArray("./json/characters.json");
  JSONObject selectChara = Characters.getJSONObject(numRandom);

  int damage;
  damage = selectChara.getInt("Atk");
  

  //turnCurrentDmg = atkEnemy;

  if (nbAtk == 1) {
    testEnemyAtk = "ATTACK";
    turnCurrentDmg = damage/2;
    turnCurrentFight(testEnemyAtk, turnCurrentDmg);
    attackTeammate(turnCurrentDmg);
    isEnnemyAtk = false;
  } else if (nbAtk == 2) {
    testEnemyAtk = selectChara.getString("Skill");
    turnCurrentDmg = damage;
    turnCurrentFight(testEnemyAtk, turnCurrentDmg);
    attackTeammate(turnCurrentDmg);
    isEnnemyAtk = false;
  } else {
    testEnemyAtk = selectChara.getString("Ult");
    turnCurrentDmg = damage+2;
    turnCurrentFight(testEnemyAtk, turnCurrentDmg);
    attackTeammate(turnCurrentDmg);
    isEnnemyAtk = false;
  }


  if (isEnnemyAtk == false) {
    fightRotationNb = 1;
  }
}

void attackTeammate(int dmg) {
  int random = int(random(0, teamMember+1));
  
  if (random == 0) {
    currentHpLexie -= dmg;
  } else if (random == 1) {
    currentHpTeammate1 -= dmg;
  }
  else if (random == 2) {
    currentHpTeammate2 -= dmg;
  }
  else if (random == 3) {
    currentHpTeammate3 -= dmg;
  }
  
}

void newEnemy() {
  JSONArray Characters = loadJSONArray("./json/characters.json");
  numRandom = int(random( 0, Characters.size() ));
  JSONObject selectChara = Characters.getJSONObject(numRandom);

  //println("je suis numRandom avant le if : " + numRandom);

  //&& selectChara.getBoolean("isRat") == false
  //if (selectChara.getBoolean("isClaimable") == false ) {
  //  numRandom = 5;
  //  newEnemy();
  //println("je suis numRandom APRES le if : " + numRandom);
  //}

  Enemy = loadImage(selectChara.getString("Img"));
  hpEnemy = selectChara.getInt("MaxHp");
  currentHpEnemy = hpEnemy;
  
  reload();
}
