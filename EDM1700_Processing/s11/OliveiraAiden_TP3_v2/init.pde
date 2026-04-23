// INITIALISATION - - - - - - - - - - - - - - - - - - - - - - - - - - - -
void init() {
  // set les polices d'écriture
  fontTitre = createFont("aAtmospheric.ttf", 128);
  fontGen = createFont("SonicSaberPersonalUse-Regular.ttf", 128);
 
  // s'assure que les conditions de win/lose sont désactivés
  isLaFin = false;
  isWin = false;

  // s'assure que le reste de l'équipe est vide
  team[1] = null;
  team[2] = null;
  team[3] = null;
  
  // load les images de fond
  background = loadImage("background.png");
  bgMenu = loadImage("MainMenu.png");
  bgBadEnd = loadImage("BadEnding.png");
  bgGoodEnd = loadImage("GoodEnding.png");

  // load le JSON pour les images "fixes" de la Granny et de l'ennemi
  JSONArray Characters = loadJSONArray("./json/characters.json");
  JSONObject selectChara = Characters.getJSONObject(numRandom);
  Enemy = loadImage(selectChara.getString("Img"));
  Granny = loadImage(selectChara.getString("ImgKaboom"));
  
  Lexie = loadImage("lexie.png");  // load l'image de Lexie

  // load les images d'Emmett et de son corps
  EmmettBlueprint = loadImage("EmmettFullBody.png");
  EmmettHead = loadImage("EmmettHead.png");
  EmmettLArm = loadImage("EmmettLArm.png");
  EmmettRArm = loadImage("EmmettRArm.png");
  EmmettTorso = loadImage("EmmettTorso.png");
  EmmettLLeg = loadImage("EmmettLLeg.png");
  EmmettRLeg = loadImage("EmmettRLeg.png");
  

  // set les valeurs par défaut des attaques des alliés (j'avais eu des bugs pcq c'est 'null'
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

// RELOAD - - - - - - - - - - - - - - - - - - - - - - - - - - - -
void reload() {          // fonction a appeler entre les "rounds" du jeu
  // fait revivre les personnages morts (si c'est le cas)
  isLexieDead = false;   
  isTeam1Dead = false;
  isTeam2Dead = false;
  isTeam3Dead = false;

  currentHpLexie = hpLexie;  // reset la vie de Lexie
  
  // affiche le nombre de dommage de chaque attaque (truc un peu sketch, mais le seul moyen d'afficher des int en string)
  String Team1MainAtk = atkTeammate1/2 + "";
  String Team1Skill = atkTeammate1 + "";
  String Team1Ult = atkTeammate1+2 + "";

  // set les attaques des teammates + leur vie
  Teammate1Atk = new btnAttacks(width*0.4, height*0.51, 170, 50, "ATTAQUE", Team1MainAtk + " DMG");
  Teammate1Skill = new btnAttacks(width*0.4, height*0.585, 170, 50, txtSkillTeam1, Team1Skill + " DMG");
  Teammate1Ult = new btnAttacks(width*0.4, height*0.66, 170, 50, txtUltTeam1, Team1Ult + " DMG");
  currentHpTeammate1 = hpTeammate1;
  
  // affiche le nombre de dommage de chaque attaque
  String Team2MainAtk = atkTeammate2/2 + "";
  String Team2Skill = atkTeammate2 + "";
  String Team2Ult = atkTeammate2+2 + "";

  // set les attaques des teammates + leur vie
  Teammate2Atk = new btnAttacks(width*0.63, height*0.51, 170, 50, "ATTAQUE", Team2MainAtk + " DMG");
  Teammate2Skill = new btnAttacks(width*0.63, height*0.585, 170, 50, txtSkillTeam2, Team2Skill + " DMG");
  Teammate2Ult = new btnAttacks(width*0.63, height*0.66, 170, 50, txtUltTeam2, Team2Ult + " DMG");
  currentHpTeammate2 = hpTeammate2;
  
  // affiche le nombre de dommage de chaque attaque
  String Team3MainAtk = atkTeammate3/2 + "";
  String Team3Skill = atkTeammate3 + "";
  String Team3Ult = atkTeammate3+2 + "";

  // set les attaques des teammates + leur vie
  Teammate3Atk = new btnAttacks(width*0.86, height*0.51, 170, 50, "ATTAQUE", Team3MainAtk + " DMG");
  Teammate3Skill = new btnAttacks(width*0.86, height*0.585, 170, 50, txtSkillTeam3, Team3Skill + " DMG");
  Teammate3Ult = new btnAttacks(width*0.86, height*0.66, 170, 50, txtUltTeam3, Team3Ult + " DMG");
  currentHpTeammate3 = hpTeammate3;

}
