/*
 shout out a Alex pour l'aide avec la save file pcq mon
 fichier voulait rien savoir >:(
 */

JSONObject savefile;

void savefileLoad() {
  savefile = loadJSONObject("json/savefile.json");
  if (savefile == null) {
    savefile = new JSONObject();
    savefile.setInt("chara0_exp", 0);
    savefile.setInt("chara0_lvl", 1);
    
    savefile.setBoolean("hasWon", false);
    savefile.setInt("mobsSlain", 0);
    
    // unlockedItems = new JSONArray();
    // savefile.setJSONArray("unlockedItems", unlockedItems);
    
    saveJSONObject(savefile, "data/json/savefile.json");
  } else {
    //unlockedItems = savefile.getJSONArray("unlockedItems);
  }
}
