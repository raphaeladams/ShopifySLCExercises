//Given two strings, `average_length_of_words` returns the average of their
//lengths

float averageLengthOfWords(String word1, String word2) {
  return (word1.length() + word2.length())/2.0;
}

void setup() {
  println(averageLengthOfWords("pikachu", "pokemonster")); //9
  println(averageLengthOfWords("ash", "ketchum")); //5
}
