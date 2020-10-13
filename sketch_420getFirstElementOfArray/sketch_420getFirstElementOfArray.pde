//Given a hash and a key(symbol), `get_first_element_of_array_in_hash` returns
//the first element of the array located at the given key

//Return nil:
//   a) if the array is empty
//   b) if the value at the given key is not an array
//   c) if the key does not exist in the hash

//assume all values in the hash are arrays of ints

import java.util.*;

Integer getFirstElementOfArray(HashMap<String, int[]> givenHash, String givenKey) {
  if (givenHash.get(givenKey) == null) {
    return null;
  } else if (givenHash.get(givenKey).length == 0) {
    return null;
  } else {
    return givenHash.get(givenKey)[0];
  }
}

void setup() {
  HashMap<String, int[]> game = new HashMap<String, int[]>();
  int[] title = {1, 2, 3};
  int[] lives = {3};
  int[] levels = {4, 5, 6, 7};
  int[] completedLevels = {};
  game.put("title", title);
  game.put("lives", lives);
  game.put("levels", levels);
  game.put("completedLevels", completedLevels);
  
  HashMap<String, int[]> pokemon = new HashMap<String, int[]>();
  int[] name = {1};
  int[] number = {4};
  int[] type = {2, 3};
  int[] weaknesses = {1, 2, 3};
  pokemon.put("name", name);
  pokemon.put("number", number);
  pokemon.put("type", type); 
  pokemon.put("weaknesses", weaknesses);
  
  println(getFirstElementOfArray(game, "levels")); //4
  println(getFirstElementOfArray(game, "completedLevels")); //null
  println(getFirstElementOfArray(game, "enemies")); //null
  println(getFirstElementOfArray(pokemon, "weaknesses")); //1
}
