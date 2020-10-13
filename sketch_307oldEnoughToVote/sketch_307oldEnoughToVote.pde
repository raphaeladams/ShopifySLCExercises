//Given a person(hash) that contains an `age` key, `old_enough_to_vote?`
//returns a boolean (true or false), indicating whether the person is old enough
//to legally vote in Canada.

import java.util.*;

boolean oldEnoughToVote(HashMap<String, String> person) {
  if (person.get("age") == null) {
    println("We don't have " + person.get("firstName") + "'s age"); 
    return false;
  } else if (parseInt(person.get("age")) < 18) {
    return false;
  } else {
    return true;
  }
  
  //assuming that the given age (if there is one) will be parseable to an int value
  //if not, NumberFormatException will be thrown
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
  
  println(oldEnoughToVote(ned)); //true
  println(oldEnoughToVote(lisa)); //false
}
