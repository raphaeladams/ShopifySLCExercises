//Given a hash, `remove_odd_values_in_hash` returns the given hash with all
//the keys removed whose values are odd numbers

import java.util.*;

HashMap<String, Integer> removeOddValuesInHash(HashMap<String, Integer> givenHash) {
  String[] keysToRemove = new String[givenHash.size()];
  int position = 0;
  for (Map.Entry<String, Integer> anEntry : givenHash.entrySet()) {
    if ((anEntry.getValue())%2 != 0) {
      //keep a list of keys to remove after iterating
      keysToRemove[position] = anEntry.getKey();
      position++;
    }
  }
  for (String currentKey : keysToRemove) {
    //remove the keys we've listed
    givenHash.remove(currentKey);
  }
  return givenHash;
}

void setup() {
  HashMap<String, Integer> scores = new HashMap<String, Integer>();
  scores.put("ryan", 78);
  scores.put("emily", 53); 
  scores.put("kay", 92);
  scores.put("pat", 25);
  
  scores = removeOddValuesInHash(scores);
  println(scores); //ryan=78, kay=92
  
  HashMap<String, Integer> inventory = new HashMap<String, Integer>();
  inventory.put("iphone", 21);
  inventory.put("nexus", 62);
  inventory.put("galaxy", 54);
  inventory.put("pixel", 36);
  inventory.put("bb_bold", 77);
  inventory.put("htc_one", 48);
  
  inventory = removeOddValuesInHash(inventory);
  println(inventory); //nexus=62, galaxy=54, pixel=36, htc_one=48
}
