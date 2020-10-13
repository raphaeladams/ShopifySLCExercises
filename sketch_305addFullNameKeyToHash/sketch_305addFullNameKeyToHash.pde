//Given a hash that has `first_name` and `last_name` keys, the method
//`add_full_name_key_to_hash` adds a `full_name` key whose value is a string
//with the first name and last name separated by a space

import java.util.*;

void addFullNameKeyToHash(HashMap<String, String> person) {
  if (person.get("firstName") != null && person.get("lastName") != null) {
    person.put("fullName", person.get("firstName") + " " + person.get("lastName"));
  } else {
    println("We don't have the full name");
  }
}

void setup() {
  HashMap<String, String> ceo = new HashMap<String, String>();
  ceo.put("firstName", "Tobi");
  ceo.put("lastName", "Lutke");

  addFullNameKeyToHash(ceo);

  for (Map.Entry anEntry : ceo.entrySet()) {
    println(anEntry.getKey() + ": " + anEntry.getValue());
  }
}
