void ennemyAttacks() {
  int nbAtk = int(random(1, 4));
  String testEnemyAtk;
  
  JSONArray Characters = loadJSONArray("./json/characters.json");
  JSONObject selectChara = Characters.getJSONObject(numRandom);
    
  turnCurrentDmg = selectChara.getInt("Atk");
  
  //turnCurrentDmg = atkEnemy;
  
  if (nbAtk == 1) {
    testEnemyAtk = "ATTACK";
    turnCurrentFight(testEnemyAtk, turnCurrentDmg);
    isEnnemyAtk = false;
  } else if (nbAtk == 2) {
    testEnemyAtk = selectChara.getString("Skill");
    turnCurrentFight(testEnemyAtk, turnCurrentDmg);
    isEnnemyAtk = false;
  } else {
    testEnemyAtk = selectChara.getString("Ult");
    turnCurrentFight(testEnemyAtk, turnCurrentDmg);
    isEnnemyAtk = false;
  }
  
  
  if (isEnnemyAtk == false) {
    fightRotationNb = 1;
  }
}

void newEnemy() {
  
  JSONArray Characters = loadJSONArray("./json/characters.json");
  numRandom = int(random( 0, Characters.size() ));
  JSONObject selectChara = Characters.getJSONObject(numRandom); 
  
  println("je suis numRandom avant le if : " + numRandom);
  
  
  if (selectChara.getBoolean("isClaimable") == false) {
    numRandom = 5;
    JSONObject selectChara2 = Characters.getJSONObject(numRandom); 
    Enemy = loadImage(selectChara2.getString("Img")); 
    hpEnemy = selectChara2.getInt("MaxHp");
    currentHpEnemy = hpEnemy;
  } else {
    Enemy = loadImage(selectChara.getString("Img")); 
    hpEnemy = selectChara.getInt("MaxHp");
    currentHpEnemy = hpEnemy;
  }
  
  println("je suis numRandom APRES le if : " + numRandom);
  
  
}
