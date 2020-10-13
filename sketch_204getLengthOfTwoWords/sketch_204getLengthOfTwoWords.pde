//Given two words(strings), `get_length_of_two_words` returns the sum of their
//lengths.

int getLengthOfTwoWords(String word1, String word2) {
  return word1.length() + word2.length();
}

void setup() {
  println(getLengthOfTwoWords("happy", "birthday")); //13
  println(getLengthOfTwoWords("merchant", "lyfe")); //12
}
