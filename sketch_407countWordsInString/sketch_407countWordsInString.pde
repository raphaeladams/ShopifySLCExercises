//Given a string of words, `count_words_in_string` returns a hash where each key
//represents a word in the given string, with its value being the number of
//occurrences that word appears in the given string

//If the string is empty, it should return an empty hash

//Do not include punctuation in the string.
//Casing in the words should not matter. "The" and "the" should count towards
//the same tally.
//For example, "The wolf ate the pig" will return a count of `2` for the key `the`

import java.util.*;

TreeMap<String, Integer> countWordsInString(String givenString) {
  TreeMap<String, Integer> words = new TreeMap<String, Integer>();
  char[] punctuation = {' ', '.', ',', '?', '!', ':', ';'};
  String currentWord = "";

  for (int i = 0; i <= givenString.length(); i++) {
    boolean endOfWord = false;
    for (char puncCheck : punctuation) {
      if (i == givenString.length() || givenString.charAt(i) == puncCheck) {
        endOfWord = true;
        break;
      }
    }

    if (endOfWord) {
      boolean alreadyInHash = false; 
      for (Map.Entry anEntry : words.entrySet()) {
        if (currentWord.equals(anEntry.getKey())) {
          alreadyInHash = true;
          break;
        }
      }

      if (alreadyInHash) {
        words.put(currentWord, words.get(currentWord) + 1);
      } else {
        words.put(currentWord, 1);
      }
      currentWord = "";
    } else {
      currentWord += str(givenString.charAt(i)).toLowerCase();
    }
  }
  return words;
}

void setup() {
  String string1 = "The cat in the hat didn't eat the cat with the rat";
  String string2 = "Beau is my beau she is the most beautiful beau";
  println(countWordsInString(string1)); 
  println(countWordsInString(string2));
}
