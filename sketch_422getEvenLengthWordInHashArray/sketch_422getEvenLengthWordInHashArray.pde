//Given a hash and a key(string), `get_even_length_words_in_hash_array` returns
//an array containing all the even length word elements of the array located at
//the given key

//Assume all elements in the array are strings
//Return an empty array:
//   a) if the value at the given key is not an array
//   b) if the key does not exist in the hash
//   c) if the array is empty
//   d) if none of the elements in the array are even

import java.util.*;

String[] getEvenLengthWordsInHashArray(HashMap<String, String[]> givenHash, String givenKey) {
  if (givenHash.get(givenKey) == null) {
    return new String[0];
  } else {
    int sizeOfWordArray = 0;
    for (String i : givenHash.get(givenKey)) {
      if (i.length()%2 == 0) {
        sizeOfWordArray++;
      }
    }
    String[] wordArray = new String[sizeOfWordArray];
    int wordIndex = 0;
    for (String i : givenHash.get(givenKey)) {
      if (i.length()%2 == 0) {
        wordArray[wordIndex] = i;
        wordIndex++;
      }
    }
    return wordArray;
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
  
  println(Arrays.toString(getEvenLengthWordsInHashArray(game, "levelTypes"))); //["underwater", "castle", "athletic"]
  println(Arrays.toString(getEvenLengthWordsInHashArray(game, "completedLevels"))); //[]
  println(Arrays.toString(getEvenLengthWordsInHashArray(game, "enemies"))); //[]
  println(Arrays.toString(getEvenLengthWordsInHashArray(pokemon, "weaknesses"))); //["ground", "rock"]
  println(Arrays.toString(getEvenLengthWordsInHashArray(pokemon, "name"))); //["Charmander"]
}
