//Given a hash, `get_number_of_keys` returns a number representing how many keys
//are in the given hash

import java.util.*;

int getNumberOfKeys(HashMap<String, Integer> givenHash) {
  return givenHash.size();
}

void setup() {
  HashMap<String, Integer> scores = new HashMap<String, Integer>();
  scores.put("ryan", 78);
  scores.put("emily", 53);
  scores.put("kay", 92);
  scores.put("pat", 25);
  
  println(getNumberOfKeys(scores)); //4
  
  HashMap<String, Integer> inventory = new HashMap<String, Integer>();
  inventory.put("iphone", 21);
  inventory.put("nexus", 62);
  inventory.put("galaxy", 54); 
  inventory.put("pixel", 36);
  inventory.put("bb_bold", 77); 
  inventory.put("htc_one", 48); 
  
  println(getNumberOfKeys(inventory)); //6
}
