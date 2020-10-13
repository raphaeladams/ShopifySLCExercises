//Given three words(strings), `get_longest_word` returns an array containing two
//values, the first being the longest word, the second being the length of that
//word

import java.util.*;

String[] getLongestWord(String word1, String word2, String word3) {
  String[] longest = {word1, str(word1.length())}; //word1 is the longest so far
  String[] words = {word2, word3}; //the rest of the words we have to look at
  for (String i : words) {
    if (i.length() > parseInt(longest[1])) {
      longest[0] = i;
      longest[1] = str(i.length());
    }
  }  
  return longest;
}

void setup() {
  println(Arrays.toString(getLongestWord("poop", "fun", "fantastic"))); //["fantastic", 9]
  println(Arrays.toString(getLongestWord("charizard", "rattata", "jigglypuff"))); //["jigglypuff", 10]
}
