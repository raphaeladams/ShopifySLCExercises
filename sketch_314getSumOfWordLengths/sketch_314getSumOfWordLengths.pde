//Given three strings, `get_sum_of_word_lengths` returns the sum of their lengths

int getSumOfWordLengths(String word1, String word2, String word3) {
  return word1.length() + word2.length() + word3.length(); 
}

void setup() {
  println(getSumOfWordLengths("house", "of", "cards")); //12
  println(getSumOfWordLengths("orange", "new", "black")); //14
}
