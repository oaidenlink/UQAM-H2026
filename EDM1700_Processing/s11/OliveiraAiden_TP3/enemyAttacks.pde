void ennemyAttacks() {
  int nbAtk = int(random(1, 4));

  JSONArray Characters = loadJSONArray("./json/characters.json");
  JSONObject selectChara = Characters.getJSONObject(numRandom);

  int damage;
  damage = selectChara.getInt("Atk");

  if (nbAtk == 1) {
    enemyAtkLoop("ATTAQUE", damage/2);
  } else if (nbAtk == 2) {
    enemyAtkLoop(selectChara.getString("Skill"), damage);
  } else {
    enemyAtkLoop(selectChara.getString("Ult"), damage+2);
  }

  if (isEnnemyAtk == false) {
    fightRotationNb = 1;
  }
  
  if (isEnemyDead == true && selectChara.getBoolean("isGranny") == true) {
    Enemy = Granny;
  }
}

void enemyAtkLoop(String atkName, int dmg) {
  String testEnemyAtk;
  
  testEnemyAtk = atkName;
  turnCurrentDmg = dmg;
  
  turnCurrentFight(testEnemyAtk, turnCurrentDmg);
  attackTeammate(turnCurrentDmg, testEnemyAtk);
  displayMessageEnemy = true;
  isEnnemyAtk = false;
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

  Enemy = loadImage(selectChara.getString("Img"));
  hpEnemy = selectChara.getInt("MaxHp");
  currentHpEnemy = hpEnemy;
  
  reload();
}
