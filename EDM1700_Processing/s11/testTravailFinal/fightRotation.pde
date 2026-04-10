void fightRotation() {
  
  if (fightRotationNb <= teamMember) {
    //println("fightRotationNb: " + fightRotationNb + " / teamMember: " + teamMember);

    if (isLexieAtk == true) {
      team[fightRotationNb-1].attackBox();
      LexieAtk1.afficher();
      LexieAtk2.afficher();
      LexieAtk3.afficher();
      turnCurrentDmg = atkLexie;
    }
    if (isTeammateAtk1 == true) {
      team[fightRotationNb-1].attackBox();
      Teammate1Atk.afficher();
      Teammate1Skill.afficher();
      Teammate1Ult.afficher();
      turnCurrentDmg = atkTeammate1;
    }
    if (isTeammateAtk2 == true) {
      team[fightRotationNb-1].attackBox();
      Teammate2Atk.afficher();
      Teammate2Skill.afficher();
      Teammate2Ult.afficher();
      turnCurrentDmg = atkTeammate2;
    }
    if (isTeammateAtk3 == true) {
      team[fightRotationNb-1].attackBox();
      Teammate3Atk.afficher();
      Teammate3Skill.afficher();
      Teammate3Ult.afficher();
      turnCurrentDmg = atkTeammate3;
    }
  } else if (fightRotationNb > teamMember) { //modify this plz
    //println("C'est le tour du méchant");
    isEnnemyAtk = true;
    ennemyAttacks();
  }


  if (fightRotationNb == 1) {
    isLexieAtk = true;
  } else {
    isLexieAtk = false;
  }

  if (fightRotationNb == 2 && isEnnemyAtk == false) {
    isTeammateAtk1 = true;
  } else {
    isTeammateAtk1 = false;
  }

  if (fightRotationNb == 3 && isEnnemyAtk == false) {
    isTeammateAtk2 = true;
  } else {
    isTeammateAtk2 = false;
  }

  if (fightRotationNb == 4 && isEnnemyAtk == false) {
    isTeammateAtk3 = true;
  } else {
    isTeammateAtk3 = false;
  }
}

void changerTexteFight(String currentChara, String victime, String nomSkill) {
  texteDeFight = currentChara + " utilise " + nomSkill + " sur " + victime;
}
