void mousePressed() {
  JSONArray Characters = loadJSONArray("./json/characters.json");
  JSONObject selectChara = Characters.getJSONObject(numRandom); 
  
  //si le bouton est cliqué
  if (ajouter.estClique() && newTeammates == true) {
    
    if (ajouter.getEtiquette() == "Ajouter à l'équipe?" && selectChara.getBoolean("isClaimable") == true) {

      if (teamMember == 1) {
        Teammate1 = Enemy;
        team[teamMember] = new sonEquipe(width*0.26, height*0.72, 200, Teammate1);
        hpTeammate1 = selectChara.getInt("Hp");
        atkTeammate1 = selectChara.getInt("Atk");
      } else if (teamMember == 2) {
        Teammate2 = Enemy;
        team[teamMember] = new sonEquipe(width*0.49, height*0.72, 200, Teammate2);
        hpTeammate2 = selectChara.getInt("Hp");
        atkTeammate2 = selectChara.getInt("Atk");
      } else if (teamMember == 3) {
        Teammate3 = Enemy;
        team[teamMember] = new sonEquipe(width*0.72, height*0.72, 200, Teammate3);
        hpTeammate3 = selectChara.getInt("Hp");
        atkTeammate3 = selectChara.getInt("Atk");
      }
      
    }
    
    fightRotationNb++; // idk if this works
    selectChara.setBoolean("isClaimable", false);
    newEnemy();
    isEnemyDead = false;
    teamMember++;
    
  } else if ( refuser.estClique() ) {
    fightRotationNb++; // idk if this works
    newEnemy();
    isEnemyDead = false;
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
    if (Teammate1Atk1.estClique() ) {
      turnCurrentAtk = "Teammate 1 attaque";
      turnCurrentFight(turnCurrentAtk, turnCurrentDmg);
      isTeammateAtk1 = false;
    } else if ( Teammate1Atk2.estClique() ) {
      turnCurrentAtk = "Teammate 1 defends";
      turnCurrentFight(turnCurrentAtk, turnCurrentDmg);
      isTeammateAtk1 = false;
    } else if ( Teammate1Atk3.estClique() ) {
      turnCurrentAtk = "Teammate 1 power";
      turnCurrentFight(turnCurrentAtk, turnCurrentDmg);
      isTeammateAtk1 = false;
    }
  }

  if (isTeammateAtk2 == true) {
    if (Teammate2Atk1.estClique() ) {
      turnCurrentAtk = "Teammate 2 attaque";
      turnCurrentFight(turnCurrentAtk, turnCurrentDmg);
      isTeammateAtk2 = false;
    } else if ( Teammate2Atk2.estClique() ) {
      turnCurrentAtk = "Teammate 2 defends";
      turnCurrentFight(turnCurrentAtk, turnCurrentDmg);
      isTeammateAtk2 = false;
    } else if ( Teammate2Atk3.estClique() ) {
      turnCurrentAtk = "Teammate 2 power";
      turnCurrentFight(turnCurrentAtk, turnCurrentDmg);
      isTeammateAtk2 = false;
    }
  }

  if (isTeammateAtk3 == true) {
    if ( Teammate3Atk1.estClique() ) {
      turnCurrentAtk = "Teammate 3 attaque";
      turnCurrentFight(turnCurrentAtk, turnCurrentDmg);
      isTeammateAtk3 = false;
    } else if ( Teammate3Atk2.estClique() ) {
      turnCurrentAtk = "Teammate 3 defends";
      turnCurrentFight(turnCurrentAtk, turnCurrentDmg);
      isTeammateAtk3 = false;
    } else if ( Teammate3Atk3.estClique() ) {
      turnCurrentAtk = "Teammate 3 power";
      turnCurrentFight(turnCurrentAtk, turnCurrentDmg);
      isTeammateAtk3 = false;
    }
  }
}

void turnCurrentFight(String atkName, int atkDmg) {
  println("atkName: " + atkName + " + atkDmg: " + atkDmg);
  if (isEnnemyAtk == false && isEnemyDead == false) {
    currentHpEnemy -= atkDmg;
  }

  if (isEnemyDead == false) {
    fightRotationNb++;
  }
}
