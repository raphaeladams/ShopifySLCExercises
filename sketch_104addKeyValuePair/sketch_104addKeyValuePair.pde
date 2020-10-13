//Given a hash and a key, `add_key_value_pair` adds a new key on the given hash
//with the value of true

import java.util.*;

void addKeyValuePair(HashMap<String, String> givenHashMap, String givenKey) {
  givenHashMap.put(givenKey, str(true));
}

void setup() {
  HashMap<String, String> food = new HashMap<String, String>();
  food.put("type", "fruit");
  food.put("name", "apple");
  food.put("qty", "23");
  
  addKeyValuePair(food, "edible");
  
  for (Map.Entry currentEntry : food.entrySet()) {
    println(currentEntry.getKey(), ":", currentEntry.getValue());
  }
}
