//Given two hashes, `extend_hash` returns the first hash with the keys and
//values copied from the the second hash to the first hash


//Only add the keys that are not in the first hash
//If the first argument already has a given key, ignore it (do not overwrite the key/value)
//Do not modify the second hash at all

import java.util.*;

HashMap<String, String> extendHash(HashMap<String, String> hash1, HashMap<String, String> hash2) {
  for (Map.Entry<String, String> anEntry : hash2.entrySet()) {
    if (hash1.get(anEntry.getKey()) == null) {
      hash1.put(anEntry.getKey(), anEntry.getValue());
    }
  }  
  return hash1;
}

void setup() {
  HashMap<String, String> player = new HashMap<String, String>();
  player.put("lives", str(12));
  player.put("name", "Mario");

  HashMap<String, String> player2 = new HashMap<String, String>();
  player2.put("lives", str(57));
  player2.put("skills", "jump"); 
  player2.put("name", "Luigi");

  println(player); 
  println(player2);
  player = extendHash(player, player2);  
  println(player);
}
