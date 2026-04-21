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

  isLaFin = false;
  isWin = false;
  opacity = 0;

  team[1] = null;
  team[2] = null;
  team[3] = null;
  
  background = loadImage("background.png");

  // TEST PLACEHOLDER INFO (dans un tableau?)
  JSONArray Characters = loadJSONArray("./json/characters.json");
  JSONObject selectChara = Characters.getJSONObject(numRandom); // test
  Enemy = loadImage(selectChara.getString("Img")); // test
  Granny = loadImage(selectChara.getString("ImgKaboom")); // test
  
  Lexie = loadImage("lexie.png");

  placeholder5 = loadImage("remviolence.png");

  EmmettBlueprint = loadImage("EmmettFullBody.png");
  EmmettHead = loadImage("EmmettHead.png");
  EmmettLArm = loadImage("EmmettLArm.png");
  EmmettRArm = loadImage("EmmettRArm.png");
  EmmettTorso = loadImage("EmmettTorso.png");
  EmmettLLeg = loadImage("EmmettLLeg.png");
  EmmettRLeg = loadImage("EmmettRLeg.png");
  
  objBingBong = loadImage("obj_bingbong.png");
  objShovel = loadImage("obj_shovel.png");
  objStone = loadImage("obj_thunderStone.png");
  objTrophy = loadImage("obj_trophyCollector.png");


  if (txtSkillTeam1 == null) {
    txtSkillTeam1 = "Skill";
  }
  if (txtUltTeam1 == null) {
    txtUltTeam1 = "Ult";
  }

  if (txtSkillTeam2 == null) {
    txtSkillTeam2 = "Skill";
  }
  if (txtUltTeam2 == null) {
    txtUltTeam2 = "Ult";
  }

  if (txtSkillTeam3 == null) {
    txtSkillTeam3 = "Skill";
  }
  if (txtUltTeam3 == null) {
    txtUltTeam3 = "Ult";
  }

  // INIT LEXIE -----------------------------------------------------------
  currentHpLexie = hpLexie;
  txtHpLexie = currentHpLexie + "/" + hpLexie;
  MainCharacter = Lexie;
  
  String LexieMainAtk = atkLexie/2 + "";
  String LexieSkill = atkLexie + "";
  String LexieUlt = atkLexie+2 + "";

  LexieAtk1 = new btnAttacks(width*0.17, height*0.51, 170, 50, "ATTAQUE", LexieMainAtk + " DMG");
  LexieAtk2 = new btnAttacks(width*0.17, height*0.585, 170, 50, "KABOOM", LexieSkill + " DMG");
  LexieAtk3 = new btnAttacks(width*0.17, height*0.66, 170, 50, "KABLAOW", LexieUlt + " DMG");


  // INIT TEAMMATE 1 -----------------------------------------------------------
  currentHpTeammate1 = hpTeammate1;
  txtHpTeam1 = currentHpTeammate1 + "/" + hpTeammate1;


  // INIT TEAMMATE 2 -----------------------------------------------------------
  currentHpTeammate2 = hpTeammate2;
  txtHpTeam2 = currentHpTeammate2 + "/" + hpTeammate2;


  // INIT TEAMMATE 3 -----------------------------------------------------------
  currentHpTeammate3 = hpTeammate3;
  txtHpTeam3 = currentHpTeammate3 + "/" + hpTeammate3;


  // INIT ENEMY -----------------------------------------------------------
  currentHpEnemy = hpEnemy;
  txtHpEnemy = currentHpEnemy + "/" + hpEnemy;
}

void reload() {
  isLexieDead = false;
  isTeam1Dead = false;
  isTeam2Dead = false;
  isTeam3Dead = false;

  currentHpLexie = hpLexie;
  
  String Team1MainAtk = atkTeammate1/2 + "";
  String Team1Skill = atkTeammate1 + "";
  String Team1Ult = atkTeammate1+2 + "";

  Teammate1Atk = new btnAttacks(width*0.4, height*0.51, 170, 50, "ATTAQUE", Team1MainAtk + " DMG");
  Teammate1Skill = new btnAttacks(width*0.4, height*0.585, 170, 50, txtSkillTeam1, Team1Skill + " DMG");
  Teammate1Ult = new btnAttacks(width*0.4, height*0.66, 170, 50, txtUltTeam1, Team1Ult + " DMG");
  currentHpTeammate1 = hpTeammate1;
  
  String Team2MainAtk = atkTeammate2/2 + "";
  String Team2Skill = atkTeammate2 + "";
  String Team2Ult = atkTeammate2+2 + "";

  Teammate2Atk = new btnAttacks(width*0.63, height*0.51, 170, 50, "ATTAQUE", Team2MainAtk + " DMG");
  Teammate2Skill = new btnAttacks(width*0.63, height*0.585, 170, 50, txtSkillTeam2, Team2Skill + " DMG");
  Teammate2Ult = new btnAttacks(width*0.63, height*0.66, 170, 50, txtUltTeam2, Team2Ult + " DMG");
  currentHpTeammate2 = hpTeammate2;
  
  String Team3MainAtk = atkTeammate3/2 + "";
  String Team3Skill = atkTeammate3 + "";
  String Team3Ult = atkTeammate3+2 + "";

  Teammate3Atk = new btnAttacks(width*0.86, height*0.51, 170, 50, "ATTAQUE", Team3MainAtk + " DMG");
  Teammate3Skill = new btnAttacks(width*0.86, height*0.585, 170, 50, txtSkillTeam3, Team3Skill + " DMG");
  Teammate3Ult = new btnAttacks(width*0.86, height*0.66, 170, 50, txtUltTeam3, Team3Ult + " DMG");
  currentHpTeammate3 = hpTeammate3;
  
  hpLexie += bonusHealth;
  hpTeammate1 += bonusHealth;
  hpTeammate2 += bonusHealth;
  hpTeammate3 += bonusHealth;
}
