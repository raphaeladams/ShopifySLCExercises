//Given an age (a number), return whether a person of that age is old enough to
//legally drive in Canada.
//assume age is an integer

boolean isOldEnoughToDrive(int age) {
  if (age < 16) {
    return false;
  } else {
    return true;
  }
}

void setup() {
  println(isOldEnoughToDrive(12)); //false
  println(isOldEnoughToDrive(34)); //true
  println(isOldEnoughToDrive(16)); //true
}
