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
    attackTeammate(turnCurrentDmg, testEnemyAtk);
    isEnnemyAtk = false;
  } else if (nbAtk == 2) {
    testEnemyAtk = selectChara.getString("Skill");
    turnCurrentDmg = damage;
    turnCurrentFight(testEnemyAtk, turnCurrentDmg);
    attackTeammate(turnCurrentDmg, testEnemyAtk);
    isEnnemyAtk = false;
  } else {
    testEnemyAtk = selectChara.getString("Ult");
    turnCurrentDmg = damage+2;
    turnCurrentFight(testEnemyAtk, turnCurrentDmg);
    attackTeammate(turnCurrentDmg, testEnemyAtk);
    isEnnemyAtk = false;
  }


  if (isEnnemyAtk == false) {
    fightRotationNb = 1;
  }
}

void attackTeammate(int dmg, String name) {
  JSONArray Characters = loadJSONArray("./json/characters.json");
  JSONObject selectChara = Characters.getJSONObject(numRandom);
  int random = int(random(0, teamMember));
  
  if (random == 0) {
    currentHpLexie -= dmg;
    changerTexteFight(false, selectChara.getString("Name"), team[0].getNom(), name);
  } else if (random == 1) {
    currentHpTeammate1 -= dmg;
    changerTexteFight(false, selectChara.getString("Name"), team[1].getNom(), name);
  } else if (random == 2) {
    currentHpTeammate2 -= dmg;
    changerTexteFight(false, selectChara.getString("Name"), team[2].getNom(), name);
  } else if (random == 3) {
    currentHpTeammate3 -= dmg;
    changerTexteFight(false, selectChara.getString("Name"), team[3].getNom(), name);
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
