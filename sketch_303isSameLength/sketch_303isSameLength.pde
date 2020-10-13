//Given two words(strings), `is_same_length` returns a boolean (true or false),
//indicating whether the words have the same length

boolean isSameLength(String word1, String word2) {
  if (word1.length() == word2.length()) {
    return true; 
  } else {
    return false;
  }
}

void setup() {
  println(isSameLength("poopy", "bear")); //false
  println(isSameLength("cat", "hat")); //true
}
