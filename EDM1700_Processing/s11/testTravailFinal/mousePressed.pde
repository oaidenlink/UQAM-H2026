void mousePressed() {
  JSONArray Characters = loadJSONArray("./json/characters.json");
  JSONObject selectChara = Characters.getJSONObject(numRandom); 
  
  //si le bouton est cliqué
  if (ajouter.estClique() && newTeammates == true && isChoosing == true && selectChara.getBoolean("isRat") == false) {
    
    if (ajouter.getEtiquette() == "Ajouter à l'équipe?") {

      if (teamMember == 1) {
        txtSkillTeam1 =  selectChara.getString("Skill");
        txtUltTeam1 = selectChara.getString("Ult");
        hpTeammate1 = selectChara.getInt("MaxHp");
        currentHpTeammate1 = selectChara.getInt("Hp");
        atkTeammate1 = selectChara.getInt("Atk");
        Teammate1 = Enemy;
        team[teamMember] = new sonEquipe(width*0.26, height*0.72, 200, Teammate1);
      } else if (teamMember == 2) {
        Teammate2 = Enemy;
        //selectChara.setInt("Hp", selectChara.getInt("MaxHp") );
        txtSkillTeam2 =  selectChara.getString("Skill");
        txtUltTeam2 = selectChara.getString("Ult");
        hpTeammate2 = selectChara.getInt("MaxHp");
        currentHpTeammate2 = selectChara.getInt("Hp");
        atkTeammate2 = selectChara.getInt("Atk");
        team[teamMember] = new sonEquipe(width*0.49, height*0.72, 200, Teammate2);
      } else if (teamMember == 3) {
        Teammate3 = Enemy;
        //selectChara.setInt("Hp", selectChara.getInt("MaxHp") );
        txtSkillTeam3 =  selectChara.getString("Skill");
        txtUltTeam3 = selectChara.getString("Ult");
        hpTeammate3 = selectChara.getInt("MaxHp");
        currentHpTeammate3 = selectChara.getInt("Hp");
        atkTeammate3 = selectChara.getInt("Atk");
        team[teamMember] = new sonEquipe(width*0.72, height*0.72, 200, Teammate3);
      }
      
    }
    
    //selectChara.setBoolean("isClaimable", false);
    fightRotationNb = 1;
    newEnemy();
    isEnemyDead = false;
    isChoosing = false;
    teamMember++;
    
  } else if ( refuser.estClique() || selectChara.getBoolean("isRat") == true) {
    //selectChara.setBoolean("isClaimable", false);
    fightRotationNb = 1;
    isEnemyDead = false;
    isChoosing = false;
    newEnemy();
  }




  if (isLexieAtk == true) {
    if ( LexieAtk1.estClique() ) {
      turnCurrentAtk = "Lexie attaque";
      turnCurrentFight(turnCurrentAtk, turnCurrentDmg);
      isLexieAtk = false;
    } else if ( LexieAtk2.estClique() ) {
      turnCurrentAtk = "Lexie défends";
      turnCurrentFight(turnCurrentAtk, turnCurrentDmg);
      isLexieAtk = false;
    } else if ( LexieAtk3.estClique() ) {
      turnCurrentAtk = "Lexie power";
      turnCurrentFight(turnCurrentAtk, turnCurrentDmg);
      isLexieAtk = false;
    }
  }


  if (isTeammateAtk1 == true) {
    if (Teammate1Atk.estClique() ) {
      turnCurrentAtk = "Teammate 1 attaque";
      turnCurrentFight(turnCurrentAtk, turnCurrentDmg);
      isTeammateAtk1 = false;
    } else if ( Teammate1Skill.estClique() ) {
      turnCurrentAtk = "Teammate 1 defends";
      turnCurrentFight(turnCurrentAtk, turnCurrentDmg);
      isTeammateAtk1 = false;
    } else if ( Teammate1Ult.estClique() ) {
      turnCurrentAtk = "Teammate 1 power";
      turnCurrentFight(turnCurrentAtk, turnCurrentDmg);
      isTeammateAtk1 = false;
    }
  }

  if (isTeammateAtk2 == true) {
    if (Teammate2Atk.estClique() ) {
      turnCurrentAtk = "Teammate 2 attaque";
      turnCurrentFight(turnCurrentAtk, turnCurrentDmg);
      isTeammateAtk2 = false;
    } else if ( Teammate2Skill.estClique() ) {
      turnCurrentAtk = "Teammate 2 defends";
      turnCurrentFight(turnCurrentAtk, turnCurrentDmg);
      isTeammateAtk2 = false;
    } else if ( Teammate2Ult.estClique() ) {
      turnCurrentAtk = "Teammate 2 power";
      turnCurrentFight(turnCurrentAtk, turnCurrentDmg);
      isTeammateAtk2 = false;
    }
  }

  if (isTeammateAtk3 == true) {
    if ( Teammate3Atk.estClique() ) {
      turnCurrentAtk = "Teammate 3 attaque";
      turnCurrentFight(turnCurrentAtk, turnCurrentDmg);
      isTeammateAtk3 = false;
    } else if ( Teammate3Skill.estClique() ) {
      turnCurrentAtk = "Teammate 3 defends";
      turnCurrentFight(turnCurrentAtk, turnCurrentDmg);
      isTeammateAtk3 = false;
    } else if ( Teammate3Ult.estClique() ) {
      turnCurrentAtk = "Teammate 3 power";
      turnCurrentFight(turnCurrentAtk, turnCurrentDmg);
      isTeammateAtk3 = false;
    }
  }
  
  
}

void turnCurrentFight(String atkName, int atkDmg) {
  //println("atkName: " + atkName + " + atkDmg: " + atkDmg);
  if (isEnnemyAtk == false && isEnemyDead == false) {
    currentHpEnemy -= atkDmg;
  }

  if (isEnemyDead == false) {
    fightRotationNb++;
  }
}
