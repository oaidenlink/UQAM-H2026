// ATTAQUES DE L'ENNEMI - - - - - - - - - - - - - - - - - - - - - - - - - - - -
void ennemyAttacks() {
  int nbAtk = int(random(1, 4));                                  // numéro random pour le JSON
  JSONArray Characters = loadJSONArray("./json/characters.json"); // load le fichier json
  JSONObject selectChara = Characters.getJSONObject(numRandom);   // variable pour le json

  int damage;                          // variable pour l'attaque
  String testEnemyAtk;                 // variable pour le nom d'attaque de l'ennemi
  damage = selectChara.getInt("Atk");  // defini l'attaque (json)
  
  // serie de if pour savoir quelle attaque utiliser
  if (nbAtk == 1) {
    testEnemyAtk = "ATTAQUE";                        // nom de l'attaque
    turnCurrentDmg = damage/2;                       // nombre de dégats de l'attaque
    turnCurrentFight(testEnemyAtk, turnCurrentDmg);  // appelle la fonction qui défini le tour + l'attaque et le dommage affiché
    attackTeammate(turnCurrentDmg, testEnemyAtk);    // appelle la fonction qui défini l'attaque et le dommage sur le teammate
    displayMessageEnemy = true;                      // affiche le texte
    isEnnemyAtk = false;                             // défini l'attaque le l'ennemi a faux
  } else if (nbAtk == 2) {
    testEnemyAtk = selectChara.getString("Skill");
    turnCurrentDmg = damage;
    turnCurrentFight(testEnemyAtk, turnCurrentDmg);
    attackTeammate(turnCurrentDmg, testEnemyAtk);
    displayMessageEnemy = true;
    isEnnemyAtk = false;
  } else {
    testEnemyAtk = selectChara.getString("Ult");
    turnCurrentDmg = damage+2;
    turnCurrentFight(testEnemyAtk, turnCurrentDmg);
    attackTeammate(turnCurrentDmg, testEnemyAtk);
    displayMessageEnemy = true;
    isEnnemyAtk = false;
  }

  if (isEnnemyAtk == false) {    // si t'attaque de  l'ennemi est faux
    fightRotationNb = 1;         // remets le tour du combat a 1 (retour a Lexie)
  }
}

// FONCTION D'ATTAQUE SUR LE TEAMMATE - - - - - - - - - - - - - - - - - - - - - - - - - - - -
void attackTeammate(int dmg, String name) {
  JSONArray Characters = loadJSONArray("./json/characters.json");   // load le fichier json
  JSONObject selectChara = Characters.getJSONObject(numRandom);     // variable pour le json
  int random = int(random(0, teamMember));                          // fait un numéro random selon le nombre de persos dans la team
  
  // serie de if afin de voir quel teammate se prendra le damage
  if (random == 0) {
    currentHpLexie -= dmg;      // enleve la vie a Lexie
    changerTexteFight(false, selectChara.getString("Name"), team[0].getNom(), name);  // change le texte affiché
  } else if (random == 1) {
    currentHpTeammate1 -= dmg;  // enleve la vie au Teammate
    changerTexteFight(false, selectChara.getString("Name"), team[1].getNom(), name);  // change le texte affiché
  } else if (random == 2) {
    currentHpTeammate2 -= dmg;  // enleve la vie au Teammate
    changerTexteFight(false, selectChara.getString("Name"), team[2].getNom(), name);  // change le texte affiché
  } else if (random == 3) {
    currentHpTeammate3 -= dmg;  // enleve la vie au Teammate
    changerTexteFight(false, selectChara.getString("Name"), team[3].getNom(), name);  // change le texte affiché
  }
  
}

// NOUVEL ENNEMI - - - - - - - - - - - - - - - - - - - - - - - - - - - -
void newEnemy() {
  JSONArray Characters = loadJSONArray("./json/characters.json");   // load le fichier json
  numRandom = floor( random( Characters.size() ));                  // numéro random selon le nombre de persos
  JSONObject selectChara = Characters.getJSONObject(numRandom);     // variable pour le json

  Enemy = loadImage(selectChara.getString("Img"));    // load l'image du nouvel ennemi
  hpEnemy = selectChara.getInt("MaxHp");              // ajoute la vie de l'ennemi
  currentHpEnemy = hpEnemy;                           // set la vie max à la vie de l'ennemi
  
  reload();    // reload le tour
}
