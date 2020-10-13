//Given 3 words, `get_longest_of_three_words` returns the longest string out of
//the given three words

//Notes
//If there's more than one string with the longest length, return the first
//word in the tie

String getLongestOfThreeWords(String word1, String word2, String word3) {
  String longest = word1;
  String[] remainingWords = {word2, word3};
  for (String i : remainingWords) {
    if (i.length() > longest.length()) {
      longest = i;
    }
  }
  return longest;
}

void setup() {
  println(getLongestOfThreeWords("cars", "cats", "cans")); //cars
  println(getLongestOfThreeWords("what", "wonderful", "gifts")); //wonderful
  println(getLongestOfThreeWords("such", "great", "fun")); //great
}
