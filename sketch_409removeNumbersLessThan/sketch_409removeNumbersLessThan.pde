//Given a hash and a number, `remove_numbers_less_than` returns the hash with
//any keys removed whose values are numbers less than the given number


//Construct a new hash, applying the restrictions as indicated returning a new
//hash that omits the specified key-value pairs. The original should remain
//unchanged.

//assume our hashes are <String, Integer>, and the given number is an int

import java.util.*;

HashMap<String, Integer> removeNumbersLessThan(HashMap<String, Integer> givenHash, int givenNum) {
  HashMap<String, Integer> newHash = new HashMap<String, Integer>();
  for (String i : givenHash.keySet()) {
    if (givenHash.get(i) >= givenNum) {
      newHash.put(i, givenHash.get(i));
    }
  }
  return newHash;
}

void setup() {
  HashMap<String, Integer> family = new HashMap<String, Integer>();
  family.put("houseNumber", 4);
  family.put("members", 12);
  family.put("avgAge", 35);
  
  println(removeNumbersLessThan(family, 20)); //avgAge=35
}
