//Given a hash and a key(symbol), `get_last_element_of_array_in_hash` returns
//the `last` element of the array located at the given key

//Notes
//Return nil:
//   a) if the array is empty
//   b) if the value at the given key is not an array
//   c) if the key does not exist in the hash

// assume array is type int[] and hash is HashMap<String, Int>

Integer getLastElementOfArrayInHash(HashMap<String, int[]> givenHash, String givenKey) {
  int[] givenArray = givenHash.get(givenKey);
  if (givenArray == null || givenArray.length <= 0) {
    return null;
  } else {
    return givenArray[givenArray.length - 1];
  }
}

void setup() {
  HashMap<String, int[]> game = new HashMap<String, int[]>();
  int[] title = {1};
  int[] lives = {3};
  int[] levelTypes = {1, 2, 3, 4};
  int[] completedLevels = {1, 2, 6};
  int[] undefeatedEnemies = {};
  game.put("title", title);
  game.put("lives", lives); 
  game.put("levelTypes", levelTypes);
  game.put("completedLevels", completedLevels);
  game.put("undefeatedEnemies", undefeatedEnemies); 

  HashMap<String, int[]> pokemon = new HashMap<String, int[]>();
  int[] name = {1};
  int[] number = {4};
  int[] type = {3}; 
  int[] weaknesses = {1, 2, 3};
  int[] winStreak = {12, 6, 23, 4, 18, 3};
  pokemon.put("name", name); 
  pokemon.put("number", number); 
  pokemon.put("type", type);
  pokemon.put("weaknesses", weaknesses);
  pokemon.put("winStreak", winStreak);
  
  println(getLastElementOfArrayInHash(game, "levelTypes")); //4
  println(getLastElementOfArrayInHash(game, "completedLevels")); //6
  println(getLastElementOfArrayInHash(game, "enemies")); //null
  println(getLastElementOfArrayInHash(pokemon, "weaknesses")); //3
}
