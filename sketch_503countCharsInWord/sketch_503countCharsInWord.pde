//Given a word(string), `count_chars_in_word` returns a hash where each key
//represents a letter in the given word, with its value being the number of
//occurrences that letter appears in the given string

//If the string is empty, it should return an empty hash

import java.util.*;

TreeMap<Character, Integer> countCharsInWord(String word) {
  word = word.toLowerCase();
  TreeMap<Character, Integer> chars = new TreeMap<Character, Integer>();
  
  for (int i = 0; i < word.length(); i++) {
    char currentChar = word.charAt(i);
    if (chars.get(currentChar) == null) {
      chars.put(currentChar, 1);
    } else {
      chars.put(currentChar, chars.get(currentChar) + 1); 
    }
  }
  return chars;
}

void setup() {
  String word1 = "Bubble";
  String word2 = "squirrelled";
  String word3 = "";
  
  println(countCharsInWord(word1)); //{:b=>3, :u=>1, :l=>1, :e=>1}
  println(countCharsInWord(word2)); //{:s=>1, :q=>1, :u=>1, :i=>1, :r=>2, :e=>2, :l=>2, :d=>1}
  println(countCharsInWord(word3)); //empty hash
}
