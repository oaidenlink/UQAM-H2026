void mousePressed() {
  //si le bouton est cliqué, changez couleurFond
  if (attaques.estClique() && newTeammates == true) {
    couleurBtn = color(random(255), random(255), random(255));
    if (teamMember == 1 && attaques.getEtiquette() == "Attaque 1") {
      Teammate1 = placeholder1;
      team[teamMember] = new sonEquipe(width*0.26, height*0.72, 200, Teammate1);
    } else if (teamMember == 2 && attaques.getEtiquette() == "Attaque 1") {
      Teammate2 = placeholder2;
      team[teamMember] = new sonEquipe(width*0.49, height*0.72, 200, Teammate2);
    } else if (teamMember == 3 && attaques.getEtiquette() == "Attaque 1") {
      Teammate3 = placeholder3;
      team[teamMember] = new sonEquipe(width*0.72, height*0.72, 200, Teammate3);
    }
    teamMember++;
  } else if (newTeammates == false) {
    //println("la team est pleine!!");
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




  if (Teammate1Atk1.estClique() && isTeammateAtk1 == true || Teammate1Atk2.estClique() && isTeammateAtk1 == true || Teammate1Atk3.estClique() && isTeammateAtk1 == true) {
    turnCurrentAtk = "Teammate 1 attaque";
    turnCurrentFight(turnCurrentAtk, turnCurrentDmg);
    fightRotationNb++;
    isTeammateAtk1 = false;
  }

  if (Teammate2Atk1.estClique() && isTeammateAtk2 == true || Teammate2Atk2.estClique() && isTeammateAtk2 == true || Teammate2Atk3.estClique() && isTeammateAtk2 == true) {
    turnCurrentAtk = "Teammate 2 attaque";
    turnCurrentFight(turnCurrentAtk, turnCurrentDmg);
    fightRotationNb++;
    isTeammateAtk2 = false;
  }

  if (Teammate3Atk1.estClique() && isTeammateAtk3 == true || Teammate3Atk2.estClique() && isTeammateAtk3 == true || Teammate3Atk3.estClique() && isTeammateAtk3 == true) {
    turnCurrentAtk = "Teammate 3 attaque";
    turnCurrentFight(turnCurrentAtk, turnCurrentDmg);
    fightRotationNb++;
    isTeammateAtk3 = false;
  }
}

void turnCurrentFight(String atkName, int atkDmg) {
  println("atkName: " + atkName + " + atkDmg: " + atkDmg);
  fightRotationNb++;
}
