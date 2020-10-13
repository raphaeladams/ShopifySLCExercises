//Given a hash and a key (string), return the value at the given key.
//using processing

import java.util.*;

String getValue(HashMap<String, String> givenHashMap, String givenKey) {
  return givenHashMap.get(givenKey);
}

void setup() {
  HashMap<String, String> food = new HashMap<String, String>();
  food.put("type", "fruit");
  food.put("name", "apple");
  food.put("qty", "23");
  
  println(getValue(food, "name")); //"apple"
  println(getValue(food, "qty")); //"23"
}
