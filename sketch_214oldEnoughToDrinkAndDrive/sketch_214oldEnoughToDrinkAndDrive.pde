//Given a person(hash) that contains an `age` key, `old_enough_to_drink_and_drive?`
//returns a boolean (true or false), indicating whether the person is old enough
//to legally drink and drive in Canada.

import java.util.*;

boolean oldEnoughToDrinkAndDrive(HashMap<String, String> person) {
  return false; //drinking and driving is never legal! 
}

void setup() {
  HashMap<String, String> character = new HashMap<String, String>();
  character.put("firstName", "Ned");
  character.put("lastName", "Flanders");
  character.put("age", str(60));
  
  println(oldEnoughToDrinkAndDrive(character)); //false
}
