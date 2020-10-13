//Given a hash, `list_all_values` returns an array containing all the hash's values

//Notes
//Do not assume that there will be the same number of key-value pairs on the hash
//Return an empty array:
//   a) if the hash is empty

//assume HashMap<String, Integer>

import java.util.*;

int[] listAllValues(HashMap<String, Integer> givenHash) {
  int[] allValues = new int[givenHash.size()];
  int valueIndex = 0;
  for (int i : givenHash.values()) {
    allValues[valueIndex] = i;
    valueIndex++;
  }  
  return allValues;
}

void setup() {
  HashMap<String, Integer> drink = new HashMap<String, Integer>();
  drink.put("name", 1);
  drink.put("calories", 70);
  drink.put("sugars", 14); 
  
  HashMap<String, Integer> chair = new HashMap<String, Integer>();
  chair.put("make", 1);
  chair.put("colour", 2);
  chair.put("qty", 245);
  chair.put("size", 30); 
  
  HashMap<String, Integer> emptyHash = new HashMap<String, Integer>(0);
  
  println(Arrays.toString(listAllValues(drink))); //[1, 70, 14]
  println(Arrays.toString(listAllValues(chair))); //[1, 2, 245, 30]
  println(Arrays.toString(listAllValues(emptyHash))); //[]
}
