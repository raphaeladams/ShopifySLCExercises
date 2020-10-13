//Given a hash and a key(symbol), `get_odd_length_words_in_hash_array` returns
//an array containing all the odd length word elements of the array located at
//the given key

//Notes
//Assume all elements in the array are strings
//Return an empty array:
//   a) if the value at the given key is not an array
//   b) if the key does not exist in the hash
//   c) if the array is empty
//   d) if none of the elements in the array are odd

//assume we are working with a HashMap<String, String[]>

import java.util.*;

String[] getOddLengthWordsInHashArray(HashMap<String, String[]> givenHash, String givenKey) {
  if (givenHash.get(givenKey) == null || 
    givenHash.get(givenKey).length == 0) {
      return new String[0];
  } else {
    int numOdd = 0;
    for (String i : givenHash.get(givenKey)) {
      if (i.length()%2 != 0) {
        numOdd++;
      }
    }
    String[] oddWords = new String[numOdd];
    int oddIndex = 0;
    for (String i : givenHash.get(givenKey)) {
      if (i.length()%2 != 0) {
        oddWords[oddIndex] = i;
        oddIndex++;
      }
    }
    return oddWords;    
  }
}

void setup() {
  HashMap<String, String[]> game = new HashMap<String, String[]>();
  String[] title = {"Super Mario Bros"};
  String[] lives = {"3"};
  String[] levelTypes = {"overworld", "underwater", "castle", "athletic"};
  String[] completedLevels = {};
  game.put("title", title);
  game.put("lives", lives); 
  game.put("levelTypes", levelTypes);
  game.put("completedLevels", completedLevels);
  
  HashMap<String, String[]> pokemon = new HashMap<String, String[]>();
  String[] name = {"Charmander"};
  String[] number = {"4"};
  String[] type = {"fire"};
  String[] weaknesses = {"water", "ground", "rock"};
  pokemon.put("name", name);
  pokemon.put("number", number);
  pokemon.put("type", type);
  pokemon.put("weaknesses", weaknesses);
  
  println(Arrays.toString(getOddLengthWordsInHashArray(game, "levelTypes"))); //["overworld"]
  println(Arrays.toString(getOddLengthWordsInHashArray(game, "completedLevels"))); //[]
  println(Arrays.toString(getOddLengthWordsInHashArray(game, "enemies"))); //[]
  println(Arrays.toString(getOddLengthWordsInHashArray(pokemon, "weaknesses"))); //["water"]
  
}
