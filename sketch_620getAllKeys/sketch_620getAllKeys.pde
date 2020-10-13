/*
# Write a method called `get_all_keys`

# Given a hash, `get_all_keys` returns an array containing all the hash's keys
# as strings


# ==============================================================================
# Notes
# ==============================================================================
# Do not assume that there will be the same number of keys on the hashes
#
# Return an empty array:
#   a) if the hash is empty
*/

import java.util.Arrays;

String[] getAllKeys(HashMap<String, Integer> givenHash) {
  String[] arrayToReturn = new String[givenHash.size()];
  int indexCounter = 0;
  for (String i : givenHash.keySet()) {
    arrayToReturn[indexCounter] = i;
    indexCounter++;
  }
  return arrayToReturn;
}

void setup() {
  HashMap<String, Integer> game = new HashMap<String, Integer>();
  game.put("title", 1);
  game.put("lives", 3);
  game.put("levelTypes", 4);
  game.put("completedLevels", 5); 
  game.put("undefeatedEnemies", null);
  
  HashMap<String, Integer> pokemon = new HashMap<String, Integer>();
  pokemon.put("name", 1);
  pokemon.put("type", 6); 
  pokemon.put("weaknesses", 0); 
  
  HashMap<String, Integer> emptyHash = new HashMap<String, Integer>(0); 
  
  println(Arrays.toString(getAllKeys(game))); //[title, lives, levelTypes, completedLevels, undefeatedEnemies]
  println(Arrays.toString(getAllKeys(pokemon))); //[name, type, weaknesses]
  println(Arrays.toString(getAllKeys(emptyHash))); //[]
}
