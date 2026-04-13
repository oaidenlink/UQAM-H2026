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
        team[teamMember] = new sonEquipe(width*0.26, height*0.72, 200, Teammate1, selectChara.getString("Name"));
      } else if (teamMember == 2) {
        Teammate2 = Enemy;
        txtSkillTeam2 =  selectChara.getString("Skill");
        txtUltTeam2 = selectChara.getString("Ult");
        hpTeammate2 = selectChara.getInt("MaxHp");
        currentHpTeammate2 = selectChara.getInt("Hp");
        atkTeammate2 = selectChara.getInt("Atk");
        team[teamMember] = new sonEquipe(width*0.49, height*0.72, 200, Teammate2, selectChara.getString("Name"));
      } else if (teamMember == 3) {
        Teammate3 = Enemy;
        txtSkillTeam3 =  selectChara.getString("Skill");
        txtUltTeam3 = selectChara.getString("Ult");
        hpTeammate3 = selectChara.getInt("MaxHp");
        currentHpTeammate3 = selectChara.getInt("Hp");
        atkTeammate3 = selectChara.getInt("Atk");
        team[teamMember] = new sonEquipe(width*0.72, height*0.72, 200, Teammate3, selectChara.getString("Name"));
      }
      
    }
    
    selectChara.setBoolean("isClaimable", false);
    reload();
    fightRotationNb = 1;
    newEnemy();
    isEnemyDead = false;
    isChoosing = false;
    teamMember++;
    
  } else if ( refuser.estClique() || selectChara.getBoolean("isRat") == true) {
    //selectChara.setBoolean("isClaimable", false);
    reload();
    fightRotationNb = 1;
    isEnemyDead = false;
    isChoosing = false;
    newEnemy();
  }
  
  if (laFin.estClique() || leWin.estClique()) {
    init();
  }




  if (isLexieAtk == true) {
    if ( LexieAtk1.estClique() ) {
      choisirAtk(true, team[0].getNom(), selectChara.getString("Name"), LexieAtk1.getEtiquette());
      isLexieAtk = false;
    } else if ( LexieAtk2.estClique() ) {
      choisirAtk(true, team[0].getNom(), selectChara.getString("Name"), LexieAtk2.getEtiquette());
      isLexieAtk = false;
    } else if ( LexieAtk3.estClique() ) {
      choisirAtk(true, team[0].getNom(), selectChara.getString("Name"), LexieAtk3.getEtiquette());
      isLexieAtk = false;
    }
  }


  if (isTeammateAtk1 == true) {
    if (Teammate1Atk.estClique() ) {
      choisirAtk(true, team[1].getNom(), selectChara.getString("Name"), Teammate1Atk.getEtiquette());
      isTeammateAtk1 = false;
    } else if ( Teammate1Skill.estClique() ) {
      choisirAtk(true, team[1].getNom(), selectChara.getString("Name"), Teammate1Skill.getEtiquette());
      isTeammateAtk1 = false;
    } else if ( Teammate1Ult.estClique() ) {
      choisirAtk(true, team[1].getNom(), selectChara.getString("Name"), Teammate1Ult.getEtiquette());
      isTeammateAtk1 = false;
    }
  }

  if (isTeammateAtk2 == true) {
    if (Teammate2Atk.estClique() ) {
      choisirAtk(true, team[2].getNom(), selectChara.getString("Name"), Teammate2Atk.getEtiquette());
      isTeammateAtk2 = false;
    } else if ( Teammate2Skill.estClique() ) {
      choisirAtk(true, team[2].getNom(), selectChara.getString("Name"), Teammate2Skill.getEtiquette());
      isTeammateAtk2 = false;
    } else if ( Teammate2Ult.estClique() ) {
      choisirAtk(true, team[2].getNom(), selectChara.getString("Name"), Teammate2Ult.getEtiquette());
      isTeammateAtk2 = false;
    }
  }

  if (isTeammateAtk3 == true) {
    if ( Teammate3Atk.estClique() ) {
      choisirAtk(true, team[3].getNom(), selectChara.getString("Name"), Teammate3Atk.getEtiquette());
      isTeammateAtk3 = false;
    } else if ( Teammate3Skill.estClique() ) {
      choisirAtk(true, team[3].getNom(), selectChara.getString("Name"), Teammate3Skill.getEtiquette());
      isTeammateAtk3 = false;
    } else if ( Teammate3Ult.estClique() ) {
      choisirAtk(true, team[3].getNom(), selectChara.getString("Name"), Teammate3Ult.getEtiquette());
      isTeammateAtk3 = false;
    }
  }
  
}

void choisirAtk(boolean changerTxt, String name, String enemyName, String nameAtk) {
  turnCurrentFight(turnCurrentAtk, turnCurrentDmg);
  changerTexteFight(changerTxt, name, enemyName, nameAtk);
  displayMessage = true;
  startTime = millis();
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
