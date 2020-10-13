/*
# Given 3 words, `get_shortest_of_three_words` returns the shortest string out of
# the given three words


# ==============================================================================
# Notes
# ==============================================================================
# If there's more than one string with the shortest length, return the first
# word in the tie
*/

String getShortestOfThreeWords(String word1, String word2, String word3) {
  String shortest = word1;
  String[] wordsToCheck = {word2, word3};
  for (String i : wordsToCheck) {
    if (i.length() < shortest.length()) {
      shortest = i;
    }
  }
  return shortest;
}

void setup() {
  println(getShortestOfThreeWords("cars", "cats", "cans")); //cars
  println(getShortestOfThreeWords("what", "wonderful", "gifts")); //what
  println(getShortestOfThreeWords("so", "much", "fun")); //so
}
