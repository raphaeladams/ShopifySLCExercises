//Given a hash and a number, `remove_string_values_longer_than` returns the hash
//with all keys removed whose values are strings longer than the given number

import java.util.*;

HashMap<String, String> removeStringValuesLongerThan(HashMap<String, String> givenHash, int num) {
  HashMap<String, String> keysToRemove = new HashMap<String, String>();
  for (String currentKey : givenHash.keySet()) {
    if (givenHash.get(currentKey).length() > num) {
      keysToRemove.put(currentKey, givenHash.get(currentKey));
    }
  }
  for (String currentKey : keysToRemove.keySet()) {
    givenHash.remove(currentKey);
  }
  return givenHash;
}

void setup() {
  HashMap<String, String> family = new HashMap<String, String>();
  family.put("name", "Hirabayashi");
  family.put("members", "12");
  family.put("role", "warriors");
  family.put("sigil", "phoenix"); 
  
  println(removeStringValuesLongerThan(family, 9)); //{members="12", role="Warriors", sigil="Phoenix"}
}
