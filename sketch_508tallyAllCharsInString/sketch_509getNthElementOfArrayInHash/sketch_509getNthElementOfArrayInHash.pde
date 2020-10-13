//Given a hash, a key(symbol), and a number (n) `get_nth_element_of_array_in_hash`
//returns the `nth` element of the array located at the given key


//Notes
//Return nil:
//   a) if the array is empty
//   b) if `n` is out of range
//   c) if the value at the given key is not an array
//   d) if the key does not exist in the hash

//assume that we are working with a HashMap<String, int[]>

import java.util.*;

Integer getNthElementOfArrayInHash(HashMap<String, int[]> givenHash, String givenKey, int givenNum) {
  if (givenHash.get(givenKey) == null || 
    givenHash.get(givenKey).length == 0 ||
    givenNum < 0 ||
    givenNum >= givenHash.get(givenKey).length) {
    return null;
  } else {
    return givenHash.get(givenKey)[givenNum];
  }
}

void setup() {
  HashMap<String, int[]> game = new HashMap<String, int[]>();
  int[] title = {3};
  int[] lives = {3};
  int[] levelTypes = {1, 2, 3, 4};
  int[] completedLevels = {};
  game.put("title", title);
  game.put("lives", lives);
  game.put("level types", levelTypes);
  game.put("completed levels", completedLevels);
  
  HashMap<String, int[]> pokemon = new HashMap<String, int[]>();
  int[] name = {1};
  int[] number = {4};
  int[] type = {4};
  int[] weaknesses = {1, 2, 3};
  pokemon.put("name", name);
  pokemon.put("number", number);
  pokemon.put("type", type);
  pokemon.put("weaknesses", weaknesses);
  
  println(getNthElementOfArrayInHash(game, "level types", 2)); //3
  println(getNthElementOfArrayInHash(game, "completed levels", 3)); //null
  println(getNthElementOfArrayInHash(game, "enemies", 0)); //null
  println(getNthElementOfArrayInHash(pokemon, "weaknesses", 1)); //2
  println(getNthElementOfArrayInHash(pokemon, "weaknesses", 6)); //null
}
