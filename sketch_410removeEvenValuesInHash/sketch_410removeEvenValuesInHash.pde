//Given a hash, `remove_even_values_from_hash` returns the given hash with all
//the keys removed whose values are even numbers

//assume the hashmap is type <String, Integer>

import java.util.*;

HashMap<String, Integer> removeEvenValuesFromHash(HashMap<String, Integer> givenHash) {
  HashMap<String, Integer> newHash = new HashMap<String, Integer>();
  for (String i : givenHash.keySet()) {
    if (givenHash.get(i)%2 != 0) {
      newHash.put(i, givenHash.get(i));
    }
  }
  givenHash = newHash;
  return givenHash;
}

void setup() {
  HashMap<String, Integer> scores = new HashMap<String, Integer>();
  scores.put("ryan", 78);
  scores.put("emily", 53);
  scores.put("kay", 92);
  scores.put("pat", 25);
  println(removeEvenValuesFromHash(scores)); //emily=53, pat=25
  
  HashMap<String, Integer> inventory = new HashMap<String, Integer>();
  inventory.put("iphone", 21); 
  inventory.put("nexus", 62);
  inventory.put("galaxy", 54);
  inventory.put("pixel", 36); 
  inventory.put("bb_bold", 77); 
  inventory.put("htc_one", 48);
  println(removeEvenValuesFromHash(inventory)); //iphone=21, bb_bold=77
}
