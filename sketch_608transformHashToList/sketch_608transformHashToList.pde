//Given a hash, `transform_hash_to_list` returns an array of arrays, each inner
//array containing the hash key (as a string) and the value

//Notes
//Do not assume that there will be the same number of key-value pairs on the hash
//Return an empty array:
//   a) if the hash is empty

//assume HashMap<String, String>, we'll return String[][]

import java.util.Arrays;

String[][] transformHashToList(HashMap<String, String> givenHash) {
  String[][] arrayToReturn = new String[givenHash.size()][2];
  int indexCounter = 0;
  for (String i : givenHash.keySet()) {
    String[] keyValueArray = {i, givenHash.get(i)};
    arrayToReturn[indexCounter] = keyValueArray;
    indexCounter++;
  }  
  return arrayToReturn;
}

void setup() {
  HashMap<String, String> drink = new HashMap<String, String>();
  drink.put("name", "coconut water");
  drink.put("calories", "70"); 
  drink.put("sugars", "14g");
  
  HashMap<String, String> chair = new HashMap<String, String>();
  chair.put("make", "Herman Miller"); 
  chair.put("colour", "black");
  chair.put("qty", "245"); 
  chair.put("size", "medium"); 
  
  HashMap<String, String> emptyHash = new HashMap<String, String>();
  
  println(Arrays.deepToString(transformHashToList(drink))); //[["name", "Coconut Water"], ["calories", 70], ["sugars", "14g"]]
  println(Arrays.deepToString(transformHashToList(chair))); //[["make", "Herman Miller"], ["colour", "black"], ["qty", "245"], ["size", "medium"]]
  println(Arrays.deepToString(transformHashToList(emptyHash))); //[]
}
