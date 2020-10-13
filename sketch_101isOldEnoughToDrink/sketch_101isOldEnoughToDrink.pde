//Given an age (a number), return whether a person of that age is old enough to
//legally drink in Canada.

boolean isOldEnoughToDrink (int age) {
  if (age < 19) {
    return false;
  } else {
    return true;
  }
}

void setup() {
  println(isOldEnoughToDrink(17));
  println(isOldEnoughToDrink(55));
}
