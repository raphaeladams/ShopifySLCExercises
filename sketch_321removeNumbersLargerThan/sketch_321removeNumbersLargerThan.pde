//Given a hash and a number, `remove_numbers_larger_than` returns the hash with
//any keys removed whose values are numbers greater than the given number

import java.util.*;

HashMap<String, String> removeNumbersLargerThan(HashMap<String, String> givenHash, int givenNumber) {
  for (Map.Entry<String, String> anEntry : givenHash.entrySet()) {
    if (parseInt(anEntry.getValue()) > givenNumber) {
      givenHash.remove(anEntry.getKey());
    }
  }  
  return givenHash;
}

void setup() {
  HashMap<String, String> family = new HashMap<String, String>();
  family.put("name", "Johnson");
  family.put("members", str(12));
  family.put("avgAge", str(35)); 
  
  family = removeNumbersLargerThan(family, 20); 
  println(family); //name=Johnson, members=12
}
