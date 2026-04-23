// QUAND LE BOUTON EST CLIQUÉ - - - - - - - - - - - - - - - - - - - - - - - - - - - -
void mousePressed() {
  // load les fichiers JSON
  JSONArray Characters = loadJSONArray("./json/characters.json");
  JSONObject selectChara = Characters.getJSONObject(numRandom); 
  
  if ( btnMenu.estClique() ) {
    isMenuAffiche = false;  // enlève le menu principal si on clique sur "jouer"
  }
  
  //si le bouton est cliqué ET qu'on accepte des nouveaux teammates ET qu'on peut choisir d'ajouter/démonter
  if (ajouter.estClique() && newTeammates == true && isChoosing == true) {
    
    if (ajouter.getEtiquette() == "Ajouter à l'équipe?") {  // on s'assure qu'on clique sur la bonne chose

      if (teamMember == 1) {                              // si on a seulement 1 perso dans la team, get ses infos
        Teammate1 = Enemy;                                // le teammate 1 est donc l'ancien ennemi
        txtSkillTeam1 =  selectChara.getString("Skill");  
        txtUltTeam1 = selectChara.getString("Ult");
        hpTeammate1 = selectChara.getInt("MaxHp");
        currentHpTeammate1 = selectChara.getInt("Hp");
        atkTeammate1 = selectChara.getInt("Atk");
        team[teamMember] = new sonEquipe(width*0.26, height*0.72, 200, Teammate1, selectChara.getString("Name")); // l'ajoute au tableau
      } else if (teamMember == 2) {                              // si on a seulement 2 perso dans la team, get ses infos
        Teammate2 = Enemy;                                       // le teammate 1 est donc l'ancien ennemi
        txtSkillTeam2 =  selectChara.getString("Skill");
        txtUltTeam2 = selectChara.getString("Ult");
        hpTeammate2 = selectChara.getInt("MaxHp");
        currentHpTeammate2 = selectChara.getInt("Hp");
        atkTeammate2 = selectChara.getInt("Atk");
        team[teamMember] = new sonEquipe(width*0.49, height*0.72, 200, Teammate2, selectChara.getString("Name")); // l'ajoute au tableau
      } else if (teamMember == 3) {                              // si on a seulement 3 perso dans la team, get ses infos
        Teammate3 = Enemy;                                       // le teammate 1 est donc l'ancien ennemi
        txtSkillTeam3 =  selectChara.getString("Skill");
        txtUltTeam3 = selectChara.getString("Ult");
        hpTeammate3 = selectChara.getInt("MaxHp");
        currentHpTeammate3 = selectChara.getInt("Hp");
        atkTeammate3 = selectChara.getInt("Atk");
        team[teamMember] = new sonEquipe(width*0.72, height*0.72, 200, Teammate3, selectChara.getString("Name")); // l'ajoute au tableau
      }
      
    }
    
    // reset les différents paramètres, appelle un nouvel ennemi et reload le tour
    reload();
    fightRotationNb = 1;
    newEnemy();
    isEnemyDead = false;
    isChoosing = false;
    teamMember++;
    
  } else if ( refuser.estClique() ) {  // si on démonte l'ennemi, ajouter une partie a Emmett
    
    if (emmettNbPieces == 1) {
      pieceEmmett[emmettNbPieces] = new buildEmmett(100, 100, 200, 400, EmmettLArm);
      emmettNbPieces++;
    } else if (emmettNbPieces == 2) {
      pieceEmmett[emmettNbPieces] = new buildEmmett(100, 100, 200, 400, EmmettRArm);
      emmettNbPieces++;
    } else if (emmettNbPieces == 3) {
      pieceEmmett[emmettNbPieces] = new buildEmmett(100, 100, 200, 400, EmmettTorso);
      emmettNbPieces++;
    } else if (emmettNbPieces == 4) {
      pieceEmmett[emmettNbPieces] = new buildEmmett(100, 100, 200, 400, EmmettLLeg);
      emmettNbPieces++;
    } else if (emmettNbPieces == 5) {
      pieceEmmett[emmettNbPieces] = new buildEmmett(100, 100, 200, 400, EmmettRLeg);
      emmettNbPieces++;
    }
    
    // reset les différents paramètres, appelle un nouvel ennemi et reload le tour
    fightRotationNb = 1;
    isEnemyDead = false;
    isChoosing = false;
    reload();
    newEnemy();
  }

  // conditions si c'est au tour de Lexie
  if (isLexieAtk == true) {
    if ( LexieAtk1.estClique() ) { // attaque de base
      choisirAtk(true, team[0].getNom(), selectChara.getString("Name"), LexieAtk1.getEtiquette());
      isLexieAtk = false;
    } else if ( LexieAtk2.estClique() ) {  // attaque plus forte
      choisirAtk(true, team[0].getNom(), selectChara.getString("Name"), LexieAtk2.getEtiquette());
      isLexieAtk = false;
    } else if ( LexieAtk3.estClique() ) {  // attaque ultime
      choisirAtk(true, team[0].getNom(), selectChara.getString("Name"), LexieAtk3.getEtiquette());
      isLexieAtk = false;
    }
  }

  // conditions si c'est au tour du teammate
  if (isTeammateAtk1 == true) {
    if (Teammate1Atk.estClique() ) { // attaque de base
      choisirAtk(true, team[1].getNom(), selectChara.getString("Name"), Teammate1Atk.getEtiquette());
      isTeammateAtk1 = false;
    } else if ( Teammate1Skill.estClique() ) {  // attaque plus forte
      choisirAtk(true, team[1].getNom(), selectChara.getString("Name"), Teammate1Skill.getEtiquette());
      isTeammateAtk1 = false;
    } else if ( Teammate1Ult.estClique() ) {  // attaque ultime
      choisirAtk(true, team[1].getNom(), selectChara.getString("Name"), Teammate1Ult.getEtiquette());
      isTeammateAtk1 = false;
    }
  }

  // conditions si c'est au tour du teammate
  if (isTeammateAtk2 == true) {
    if (Teammate2Atk.estClique() ) { // attaque de base
      choisirAtk(true, team[2].getNom(), selectChara.getString("Name"), Teammate2Atk.getEtiquette());
      isTeammateAtk2 = false;
    } else if ( Teammate2Skill.estClique() ) {  // attaque plus forte
      choisirAtk(true, team[2].getNom(), selectChara.getString("Name"), Teammate2Skill.getEtiquette());
      isTeammateAtk2 = false;
    } else if ( Teammate2Ult.estClique() ) {  // attaque ultime
      choisirAtk(true, team[2].getNom(), selectChara.getString("Name"), Teammate2Ult.getEtiquette());
      isTeammateAtk2 = false;
    }
  }

  // conditions si c'est au tour du teammate
  if (isTeammateAtk3 == true) {
    if ( Teammate3Atk.estClique() ) { // attaque de base
      choisirAtk(true, team[3].getNom(), selectChara.getString("Name"), Teammate3Atk.getEtiquette());
      isTeammateAtk3 = false;
    } else if ( Teammate3Skill.estClique() ) {  // attaque ultime
      choisirAtk(true, team[3].getNom(), selectChara.getString("Name"), Teammate3Skill.getEtiquette());
      isTeammateAtk3 = false;
    } else if ( Teammate3Ult.estClique() ) {  // attaque ultime
      choisirAtk(true, team[3].getNom(), selectChara.getString("Name"), Teammate3Ult.getEtiquette());
      isTeammateAtk3 = false;
    }
  }
  
}

// CHOISIR L'ATTAQUE - - - - - - - - - - - - - - - - - - - - - - - - - - - -
void choisirAtk(boolean changerTxt, String name, String enemyName, String nameAtk) {
  //fonction qui permet d'afficher le texte. oui techniquement je le fais ailleurs. non je ne peux pas supprimer ceci pcq ça casse tout. :(
  turnCurrentFight(turnCurrentAtk, turnCurrentDmg);
  changerTexteFight(changerTxt, name, enemyName, nameAtk);
  displayMessage = true;    // parmet d'afficher le message a droite
  startTime = millis();     // start le timer afin d'afficher le texte pendant 3s seulement
}

// TOUR DE COMBAT ACTUEL - - - - - - - - - - - - - - - - - - - - - - - - - - - -
void turnCurrentFight(String atkName, int atkDmg) {
  //println("atkName: " + atkName + " + atkDmg: " + atkDmg);
  if (isEnnemyAtk == false && isEnemyDead == false) {  // permets a l'ennemi de perdre de la vie
    currentHpEnemy -= atkDmg;                          // l'ennemi mange un coup
  }

  if (isEnemyDead == false) {      // tant que l'ennemi n'est pas mort on passe au prochain tour
    fightRotationNb++;
  }
}
