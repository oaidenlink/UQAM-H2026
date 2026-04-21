void appelleObjets() {
  objRandom = floor( random(4));

  if (isObjClaimed == true && nbObjets <= 4) {
    
    if (objRandom == 1) {
      ChosenObject = objTrophy;
      bonusDmg += 1;
      bonusHealth += 2;
    } else if (objRandom == 2) {
      ChosenObject = objShovel;
      bonusDmg += 3;
    } else if (objRandom == 3) {
      ChosenObject = objStone;
      bonusHealth += 3;
    } else {
      ChosenObject = objBingBong;
      bonusDmg += 5;
      bonusHealth += 5;
    }


    if (nbObjets == 0) {
      tblObjets[nbObjets] = new tableauObj(100, 10, 40, ChosenObject);
      nbObjets++;
      isObjClaimed = false;
    } else if (nbObjets == 1) {
      tblObjets[nbObjets] = new tableauObj(150, 10, 40, ChosenObject);
      nbObjets++;
      isObjClaimed = false;
    } else if (nbObjets == 2) {
      tblObjets[nbObjets] = new tableauObj(200, 10, 40, ChosenObject);
      nbObjets++;
      isObjClaimed = false;
    } else if (nbObjets == 3) {
      tblObjets[nbObjets] = new tableauObj(250, 10, 40, ChosenObject);
      nbObjets++;
      isObjClaimed = false;
    } else if (nbObjets == 4) {
      tblObjets[nbObjets] = new tableauObj(300, 10, 40, ChosenObject);
      nbObjets++;
      isObjClaimed = false;
    } else if (nbObjets > 4) {
      isObjClaimed = false;
    }
  }





  //if (tblObjets == 1) {
  //}

  //  int bonusDmg;
  //int bonusHealth;

  // selectChara.getString("Name")

  //"Name" : "Bing Bong",
  //    "Img" : "obj_bingBong",
  //    "AtkBonus" : 5,
  //    "HpBonus": 5



  // nbObjets
}
