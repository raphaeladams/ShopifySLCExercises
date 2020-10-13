//Given a hash and an array of strings, `copy_elements_in_hash` returns a hash
//containing only the key-value pairs from the given hash whose keys are present
//in the given array

//Do not modify the given hash, it should remain unchanged
//The keys that are present in the given array but are not present in the given
//hash should be disregarded

import java.util.*;

HashMap<String, Integer> copyElementsInHash(HashMap<String, Integer> givenHash, String[] givenArray) {
  HashMap<String, Integer> newHash = new HashMap<String, Integer>();
  for (String i : givenArray) {
    if (givenHash.get(i) != null) {
      newHash.put(i, givenHash.get(i));
    }
  }  
  return newHash;
}

void setup() {
  HashMap<String, Integer> daycare = new HashMap<String, Integer>();
  daycare.put("age", 5);
  daycare.put("address", 80);
  daycare.put("costPerHour", 35);
  daycare.put("name", 100);
  String[] daycareArray = {"age", "costPerHour", "children"};
  
  HashMap<String, Integer> film = new HashMap<String, Integer>();
  film.put("title", 300);
  film.put("rating", 9);
  film.put("duration", 120);
  film.put("awards", 3);
  String[] filmArray = {"duration", "director", "title", "rating"};
  
  println(copyElementsInHash(daycare, daycareArray)); //age=5, costPerHour=35
  println(copyElementsInHash(film, filmArray)); //duration=120, title=300, rating=9
}
