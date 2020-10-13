//Given an age (a number), return whether a person of that age is old enough to
//legally vote in Canada.

boolean isOldEnoughToVote(int age) {
  if (age < 18) {
    return false;
  } else { 
    return true;
  }
}

void setup() {
  println(isOldEnoughToVote(16)); //false
  println(isOldEnoughToVote(73)); //true
}
