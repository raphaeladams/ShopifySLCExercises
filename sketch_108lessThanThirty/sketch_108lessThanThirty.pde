//Given a number, `less_than_thirty?` returns a boolean (true or false),
//indicating whether the number is less than 30

boolean lessThanThirty(int givenNumber) {
  if (givenNumber < 30) {
    return true;
  } else {
    return false;
  }
}

void setup() {
  println(lessThanThirty(12)); //true
  println(lessThanThirty(30)); //false
  println(lessThanThirty(83)); //false
}
