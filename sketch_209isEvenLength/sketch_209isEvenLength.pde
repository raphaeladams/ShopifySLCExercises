//Given a word(string), `is_even_length` returns a boolean (true or false),
//indicating whether the length of the given word is even

boolean isEvenLength(String givenWord) {
  if (givenWord.length()%2 == 0) {
    return true;
  } else {
    return false;
  }
}

void setup() {
  println(isEvenLength("winner")); //true
  println(isEvenLength("shopify")); //false
}
