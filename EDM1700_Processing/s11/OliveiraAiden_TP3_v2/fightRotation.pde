// ROTATION DU COMBAT - - - - - - - - - - - - - - - - - - - - - - - - - - - -
void fightRotation() {

  if (fightRotationNb <= teamMember) {    // si le tour est à un personnage de l'équipe

    if (isLexieAtk == true && isLexieDead == false && isTextBoxAffiche == true) { // on s'assure que c'est le tour a Lexie ET qu'elle n'est pas morte ET que la textbox est affiché
      team[fightRotationNb-1].attackBox();  // affiche la boite pour les attaques
      LexieAtk1.afficher();                 // affiche la première attaque
      LexieAtk2.afficher();                 // affiche la deuxième attaque
      LexieAtk3.afficher();                 // affiche la troisième attaque
      turnCurrentDmg = atkLexie;            // set le dmg du tour actuel 
    }
    if (isTeammateAtk1 == true && isTeam1Dead == false && isTextBoxAffiche == true) { // on s'assure que c'est le tour au teammate ET qu'elle n'est pas morte ET que la textbox est affiché
      team[fightRotationNb-1].attackBox();  // affiche la boite pour les attaques
      Teammate1Atk.afficher();              // affiche la première attaque
      Teammate1Skill.afficher();            // affiche la deuxième attaque
      Teammate1Ult.afficher();              // affiche la troisième attaque
      turnCurrentDmg = atkTeammate1;        // set le dmg du tour actuel 
    }
    if (isTeammateAtk2 == true && isTeam2Dead == false && isTextBoxAffiche == true) { // on s'assure que c'est le tour au teammate ET qu'elle n'est pas morte ET que la textbox est affiché
      team[fightRotationNb-1].attackBox();  // affiche la boite pour les attaques
      Teammate2Atk.afficher();              // affiche la première attaque
      Teammate2Skill.afficher();            // affiche la deuxième attaque
      Teammate2Ult.afficher();              // affiche la troisième attaque
      turnCurrentDmg = atkTeammate2;        // set le dmg du tour actuel 
    }
    if (isTeammateAtk3 == true && isTeam3Dead == false && isTextBoxAffiche == true) { // on s'assure que c'est le tour au teammate ET qu'elle n'est pas morte ET que la textbox est affiché
      team[fightRotationNb-1].attackBox();  // affiche la boite pour les attaques
      Teammate3Atk.afficher();              // affiche la première attaque
      Teammate3Skill.afficher();            // affiche la deuxième attaque
      Teammate3Ult.afficher();              // affiche la troisième attaque
      turnCurrentDmg = atkTeammate3;        // set le dmg du tour actuel 
    }

    if (isLexieDead == true || isTeam1Dead == true || isTeam2Dead == true || isTeam3Dead == true) {
      fightRotationNb++; // si le perso est mort, passe au prochain
    }
  } else if (fightRotationNb > teamMember) { // set le tour a l'ennemi quand c'est son tour
    isEnnemyAtk = true;                      // l'ennemi attaque
    ennemyAttacks();                         // appelle la fonction
  }

  // lorsque c'est le tour de Lexie, affiche ses attaques
  if (fightRotationNb == 1) {
    isLexieAtk = true;
    isTextBoxAffiche = true;
  } else {
    isLexieAtk = false;
  }

  // lorsque c'est le tour du Teammate 1, affiche ses attaques
  if (fightRotationNb == 2 && isEnnemyAtk == false) {
    isTeammateAtk1 = true;
    isTextBoxAffiche = true;
  } else {
    isTeammateAtk1 = false;
  }

  // lorsque c'est le tour du Teammate 2, affiche ses attaques
  if (fightRotationNb == 3 && isEnnemyAtk == false) {
    isTeammateAtk2 = true;
    isTextBoxAffiche = true;
  } else {
    isTeammateAtk2 = false;
  }

  // lorsque c'est le tour du Teammate 3, affiche ses attaques
  if (fightRotationNb == 4 && isEnnemyAtk == false) {
    isTeammateAtk3 = true;
    isTextBoxAffiche = true;
  } else {
    isTeammateAtk3 = false;
  }

  //CONDITIONS POUR PERDRE LE JEU selon le nombre de persos dans l'équipe
  if (teamMember == 4) {
    if (isLexieDead == true && isTeam1Dead == true && isTeam2Dead == true && isTeam3Dead == true) {
      isLaFin = true;  // active la fin
      GameOver();      // appelle la fonction de fin de jeu
    }
  } else if (teamMember == 3) {
    if (isLexieDead == true && isTeam1Dead == true && isTeam2Dead == true) {
      isLaFin = true;  // active la fin
      GameOver();      // appelle la fonction de fin de jeu
    }
  } else if (teamMember == 2) {
    if (isLexieDead == true && isTeam1Dead == true) {
      isLaFin = true;  // active la fin
      GameOver();      // appelle la fonction de fin de jeu
    }
  } else if (teamMember == 1) {
    if (isLexieDead == true) {
      isLaFin = true;  // active la fin
      GameOver();      // appelle la fonction de fin de jeu
    }
  }
}

// CHANGER L'AFFICHAGE DU TEXTE - - - - - - - - - - - - - - - - - - - - - - - - - - - -
void changerTexteFight(boolean isAlly, String currentChara, String victime, String nomSkill) {
  if (isAlly == true) { // affiche le texte d'attaque des alliés
    texteDeFight = currentChara + " utilise " + nomSkill + " sur " + victime; 
  } else if (isAlly == false) {// affiche le texte d'attaque de l'ennemi
    texteDeFightEnemy = currentChara + " utilise " + nomSkill + " sur " + victime;
  }
}
