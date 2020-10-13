//Given a number, `is_even` returns a boolean (true or false),
//indicating whether the number is even

boolean isEven(int givenNumber) {
  if (givenNumber%2 == 0) {
    return true;
  } else {
    return false;
  }
}

void setup() {
  println(isEven(46)); //true
  println(isEven(83)); //false
  println(isEven(100)); //true
  println(isEven(2)); //true
}
