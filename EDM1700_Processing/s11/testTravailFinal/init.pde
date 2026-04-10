void init() {
  /*
      list of bitches
    Bebop? (deadlock)
    Robot Giant from that one show
    
      random fights (not characters)
    rats
    birds
    kevin
    
      Placeholders:
    Rem 
    RemAscend
    RemSilly
    RemBonks
    Dynamo
  */
  
  // TEST PLACEHOLDER INFO (dans un tableau?)
  JSONArray Characters = loadJSONArray("./json/characters.json");
  JSONObject selectChara = Characters.getJSONObject(numRandom); // test
  Enemy = loadImage(selectChara.getString("Img")); // test
  
 
  
  placeholder1 = loadImage("PLACEHOLDER.png");
  placeholder2 = loadImage("remascend.png");
  placeholder3 = loadImage("rembonks.png");
  placeholder4 = loadImage("remsilly.png");
  placeholder5 = loadImage("remviolence.png");
  
  // INIT LEXIE -----------------------------------------------------------
  currentHpLexie = hpLexie;
  txtHpLexie = currentHpLexie + "/" + hpLexie;
  MainCharacter = placeholder5;
  
  LexieAtk1 = new btnAttacks(width*0.17, height*0.51, 170, 50, "ATTACK");
  LexieAtk2 = new btnAttacks(width*0.17, height*0.585, 170, 50, "SHOOT");
  LexieAtk3 = new btnAttacks(width*0.17, height*0.66, 170, 50, "KABOOM");
  
  
  // INIT TEAMMATE 1 -----------------------------------------------------------
  currentHpTeammate1 = hpTeammate1;
  txtHpTeam1 = currentHpTeammate1 + "/" + hpTeammate1;
  
  Teammate1Atk = new btnAttacks(width*0.4, height*0.51, 170, 50, "ATTACK");
  Teammate1Skill = new btnAttacks(width*0.4, height*0.585, 170, 50, "skill");
  Teammate1Ult = new btnAttacks(width*0.4, height*0.66, 170, 50, "ult");
  //Teammate1Skill = new btnAttacks(width*0.4, height*0.585, 170, 50, txtSkillTeam1);
  //Teammate1Ult = new btnAttacks(width*0.4, height*0.66, 170, 50, txtUltTeam1);
  
  
  // INIT TEAMMATE 2 -----------------------------------------------------------
  currentHpTeammate2 = hpTeammate2;
  txtHpTeam2 = currentHpTeammate2 + "/" + hpTeammate2;
  
  Teammate2Atk = new btnAttacks(width*0.63, height*0.51, 170, 50, "ATTACK");
  Teammate2Skill = new btnAttacks(width*0.63, height*0.585, 170, 50, "skill");
  Teammate2Ult = new btnAttacks(width*0.63, height*0.66, 170, 50, "ult");
  //Teammate2Skill = new btnAttacks(width*0.63, height*0.585, 170, 50, txtSkillTeam2);
  //Teammate2Ult = new btnAttacks(width*0.63, height*0.66, 170, 50, txtUltTeam2);
  
  
  // INIT TEAMMATE 3 -----------------------------------------------------------
  currentHpTeammate3 = hpTeammate3;
  txtHpTeam3 = currentHpTeammate3 + "/" + hpTeammate3;
  
  Teammate3Atk = new btnAttacks(width*0.86, height*0.51, 170, 50, "ATTACK");
  Teammate3Skill = new btnAttacks(width*0.86, height*0.585, 170, 50, "skill");
  Teammate3Ult = new btnAttacks(width*0.86, height*0.66, 170, 50, "ult");
  //Teammate3Skill = new btnAttacks(width*0.86, height*0.585, 170, 50, txtSkillTeam3);
  //Teammate3Ult = new btnAttacks(width*0.86, height*0.66, 170, 50, txtUltTeam3);
  
  
  // INIT ENEMY -----------------------------------------------------------
  currentHpEnemy = hpEnemy;
  txtHpEnemy = currentHpEnemy + "/" + hpEnemy;
  
  
  
}
