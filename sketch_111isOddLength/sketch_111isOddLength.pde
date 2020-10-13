//Given a word(string), `is_odd_length` returns a boolean (true or false),
//indicating whether the length of the given word is odd

boolean isOddLength(String givenWord) {
  if (givenWord.length()%2 == 0) {
    return false;
  } else {
    return true;
  }
}

void setup() {
  println(isOddLength("winner")); //false
  println(isOddLength("shopify")); //true
}
