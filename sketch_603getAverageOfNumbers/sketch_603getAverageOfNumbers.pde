//Write a method called `get_average_of_elements_in_hash_array`

//Given an object and a key(symbol), `get_average_of_elements_in_hash_array`
//returns a number representing the average of all the numbers in the given
//array located at the given key

//Notes
//Assume all elements in the array are numbers
//Return the number 0:
//   a) if the array is empty
//   b) if the value at the given key is not an array
//   c) if the key does not exist in the hash

int getAverageOfElementsInHashArray(HashMap<String, int[]> givenHash, String givenKey) {
  int[] givenArray = givenHash.get(givenKey);
  if (givenArray == null || givenArray.length <= 0) {
    return 0;
  } else {
    int sum = 0;
    for (int i : givenArray) {
      sum += i;
    }
    int avg = sum / givenArray.length;
    return avg;
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
  
  println(getAverageOfElementsInHashArray(game, "completedLevels")); //3
  println(getAverageOfElementsInHashArray(game, "undefeatedEnemies")); //0
  println(getAverageOfElementsInHashArray(pokemon, "name")); //1
  println(getAverageOfElementsInHashArray(pokemon, "winStreak")); //11
  println(getAverageOfElementsInHashArray(pokemon, "master")); //0
}
