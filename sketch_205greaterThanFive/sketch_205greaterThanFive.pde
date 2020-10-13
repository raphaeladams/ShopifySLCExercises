//Given a number, `greater_than_five?` returns a boolean (true or false),
//indicating whether the number is greater than 5

boolean greaterThanFive(int givenNumber) {
  if (givenNumber > 5) {
    return true;
  } else {
    return false;
  }
}

void setup() {
  println(greaterThanFive(1)); //false
  println(greaterThanFive(43)); //true
  println(greaterThanFive(5)); //false
}
