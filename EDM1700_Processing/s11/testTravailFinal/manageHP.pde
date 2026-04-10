void manageHP() {
  afficherHpLexie = new afficherTexte(width*0.15, height-20, 100, 20, txtHpLexie);
  txtHpLexie = currentHpLexie + "/" + hpLexie;
  afficherHpLexie.afficheText();
  
  afficherHpEnemy =  new afficherTexte(width/2, 100, 100, 20, txtHpEnemy);
  txtHpEnemy = currentHpEnemy + "/" + hpEnemy;
  afficherHpEnemy.afficheText();
  
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
  
  if (currentHpEnemy <= 0) {
    isChoosing = true;
    isEnemyDead = true;
    txtHpEnemy = "";
    
  }
}
