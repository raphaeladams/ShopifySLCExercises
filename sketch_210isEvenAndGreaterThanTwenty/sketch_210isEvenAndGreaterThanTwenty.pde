//Given a number, `is_even_and_greater_than_twenty` returns a boolean (true or false),
//indicating whether the number is both even and greater than twenty

boolean isEvenAndGreaterThanTwenty(int givenNumber) {
  if (givenNumber%2 == 0 && givenNumber > 20) {
    return true;
  } else { 
    return false;
  }
}

void setup() {
  println(isEvenAndGreaterThanTwenty(8)); //false
  println(isEvenAndGreaterThanTwenty(35)); //false
  println(isEvenAndGreaterThanTwenty(26)); //true
}
