void init() {
  /*
      list of bitches
    Seven (deadlock)
    Bebop? (deadlock)
    Spamton
    Tenna
    Robot Giant from that one show
    Registeel
    
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
  Dynamo = loadImage("DynamoWee.png");
  //DynamoHp = 16;
  //DynamoAtk = 3;
  //DynamoSkill = "KINETIC PULSE";
  //DynamoUlt = "SINGULARITY";
  
 
  
  placeholder1 = loadImage("PLACEHOLDER.png");
  placeholder2 = loadImage("remascend.png");
  placeholder3 = loadImage("rembonks.png");
  placeholder4 = loadImage("remsilly.png");
  placeholder5 = loadImage("remviolence.png");
  
  // INIT LEXIE -----------------------------------------------------------
  currentHpLexie = hpLexie;
  txtHpLexie = currentHpLexie + "/" + hpLexie;
  MainCharacter = placeholder5;
  
  LexieAtk1 = new btnAttacks(width*0.17, height*0.51, 170, 50, "Lexie Attaque");
  LexieAtk2 = new btnAttacks(width*0.17, height*0.585, 170, 50, "Lexie Défends");
  LexieAtk3 = new btnAttacks(width*0.17, height*0.66, 170, 50, "Lexie Power");
  
  
  // INIT TEAMMATE 1 -----------------------------------------------------------
  currentHpTeammate1 = hpTeammate1;
  txtHpTeam1 = currentHpTeammate1 + "/" + hpTeammate1;
  
  Teammate1Atk1 = new btnAttacks(width*0.4, height*0.51, 170, 50, "Bro Attaque");
  Teammate1Atk2 = new btnAttacks(width*0.4, height*0.585, 170, 50, "Bro Défends");
  Teammate1Atk3 = new btnAttacks(width*0.4, height*0.66, 170, 50, "Bro Power");
  
  
  // INIT TEAMMATE 2 -----------------------------------------------------------
  currentHpTeammate2 = hpTeammate2;
  txtHpTeam2 = currentHpTeammate2 + "/" + hpTeammate2;
  
  Teammate2Atk1 = new btnAttacks(width*0.63, height*0.51, 170, 50, "Granny Attaque");
  Teammate2Atk2 = new btnAttacks(width*0.63, height*0.585, 170, 50, "Granny Défends");
  Teammate2Atk3 = new btnAttacks(width*0.63, height*0.66, 170, 50, "Granny Power");
  
  
  // INIT TEAMMATE 3 -----------------------------------------------------------
  currentHpTeammate3 = hpTeammate3;
  txtHpTeam3 = currentHpTeammate3 + "/" + hpTeammate3;
  
  Teammate3Atk1 = new btnAttacks(width*0.86, height*0.51, 170, 50, "Rem Attaque");
  Teammate3Atk2 = new btnAttacks(width*0.86, height*0.585, 170, 50, "Rem Défends");
  Teammate3Atk3 = new btnAttacks(width*0.86, height*0.66, 170, 50, "Rem Power");
  
  
  // INIT ENEMY -----------------------------------------------------------
  currentHpEnemy = hpEnemy;
  txtHpEnemy = currentHpEnemy + "/" + hpEnemy;
  
  
  
}
