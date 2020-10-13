//Given an age (a number), return whether a person of that age is old enough to
//legally drink and drive in Canada.

boolean isOldEnoughToDrinkAndDrive(int age) {
  return false; //you are never legally allowed to drink and drive
}

void setup() {
  println(isOldEnoughToDrinkAndDrive(25)); //false
  println(isOldEnoughToDrinkAndDrive(18)); //false
  println(isOldEnoughToDrinkAndDrive(42)); //false
}
