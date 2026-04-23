// GESTION DE LA VIE - - - - - - - - - - - - - - - - - - - - - - - - - - - -
void manageHP() {
  // load le fichier JSON
  JSONArray Characters = loadJSONArray("./json/characters.json");
  JSONObject selectChara = Characters.getJSONObject(numRandom);

  // set la vie de Lexie et l'affiche
  afficherHpLexie = new afficherTexte(width*0.15, height-20, 100, 20, txtHpLexie);
  txtHpLexie = currentHpLexie + "/" + hpLexie;
  afficherHpLexie.afficheText();

  // set la vie de l'ennemi et l'affiche
  afficherHpEnemy =  new afficherTexte(width/2, 100, 100, 20, txtHpEnemy);
  txtHpEnemy = currentHpEnemy + "/" + hpEnemy;
  afficherHpEnemy.afficheText();

  // "boucle" if afin de montrer le texte de la vie des alliés selon le nb d'alliés
  if (teamMember >= 2) {
    afficherHpTeam1 = new afficherTexte(width*0.38, height-20, 100, 20, txtHpTeam1);
    txtHpTeam1 = currentHpTeammate1 + "/" + hpTeammate1;
    afficherHpTeam1.afficheText();
  }
  if (teamMember >= 3) {
    afficherHpTeam2 = new afficherTexte(width*0.61, height-20, 100, 20, txtHpTeam2);
    txtHpTeam2 = currentHpTeammate2 + "/" + hpTeammate2;
    afficherHpTeam2.afficheText();
  }
  if (teamMember >= 4) {
    afficherHpTeam3 = new afficherTexte(width*0.84, height-20, 100, 20, txtHpTeam3);
    txtHpTeam3 = currentHpTeammate3 + "/" + hpTeammate3;
    afficherHpTeam3.afficheText();
  }

  // quoi faire si la vie de l'ennemi atteint 0
  if (currentHpEnemy <= 0) {

    texteDeFightEnemy = selectChara.getString("Death");  // affiche le texte de mort des ennemis
    isChoosing = true;                                   // permet de choisir si on veux démonter ou s'allier a l'ennemi

    if (selectChara.getBoolean("isGranny") == true) {
      Enemy = Granny;    // affiche la Granny explosée (meme)
    }

    isEnemyDead = true;    // set l'ennemi a mort"
    txtHpEnemy = "";       // enlève l'affichage de la vie de l'ennemi
  }  

  // set les conditions de mort des alliés
  if (currentHpLexie <= 0) {
    isLexieDead = true;
  }
  if (currentHpTeammate1 <= 0 && teamMember >= 2) {
    isTeam1Dead = true;
  }
  if (currentHpTeammate2 <= 0 && teamMember >= 3) {
    isTeam2Dead = true;
  }
  if (currentHpTeammate3 <= 0 && teamMember >= 4) {
    isTeam3Dead = true;
  }

  // enlève l'affichage de la vie des persos si on a fini le jeu
  if (isLaFin == true || isWin == true) {
    txtHpLexie = "";
    txtHpTeam1 = "";
    txtHpTeam2 = "";
    txtHpTeam3 = "";
    txtHpEnemy = "";
  }
}
