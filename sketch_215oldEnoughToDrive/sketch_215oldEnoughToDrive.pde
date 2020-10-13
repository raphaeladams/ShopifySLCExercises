//Given a person(hash) that contains an `age` key, `old_enough_to_drive?`
//returns a boolean (true or false), indicating whether the person is old enough
//to legally drive in Canada.

import java.util.*;

boolean oldEnoughToDrive(HashMap<String, String> person) {
  if (person.get("age") != null && 
    Integer.parseInt(person.get("age")) >= 16) {
    return true;
  } else {
    return false;
  }
}

void setup() {
  HashMap<String, String> ned = new HashMap<String, String>();
  ned.put("firstName", "Ned");
  ned.put("lastName", "Flanders"); 
  ned.put("age", str(60));

  HashMap<String, String> lisa = new HashMap<String, String>();
  lisa.put("firstName", "Lisa");
  lisa.put("lastName", "Simpson"); 
  lisa.put("age", str(8)); 

  println(oldEnoughToDrive(ned)); //true
  println(oldEnoughToDrive(lisa)); //false
}
