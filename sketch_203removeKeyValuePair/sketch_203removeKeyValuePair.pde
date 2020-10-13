//Given a hash and a key, `remove_key_value_pair` removes the key and value pair
//from the given hash

import java.util.*;

void removeKeyValuePair(HashMap<String, String> givenHash, String givenKey) {
  givenHash.remove(givenKey, givenHash.get(givenKey));
}

void setup() {
  HashMap<String, String> food = new HashMap<String, String>();
  food.put("type", "fruit");
  food.put("name", "apple"); 
  food.put("qty", str(23));
  
  removeKeyValuePair(food, "qty");
  
  for (Map.Entry foodEntry : food.entrySet()) {
    println(foodEntry.getKey() + ": " + foodEntry.getValue());
  }
}
