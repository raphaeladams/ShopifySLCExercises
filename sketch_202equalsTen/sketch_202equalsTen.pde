//Given a number, `equals_ten?` returns a boolean (true or false),
//indicating whether the number equals 10

boolean equalsTen(int givenNumber) {
  if (givenNumber == 10) {
    return true;
  } else {
    return false;
  }
}

void setup() {
  println(equalsTen(10)); //true
  println(equalsTen(32)); //false
  println(equalsTen(8)); //false
}
