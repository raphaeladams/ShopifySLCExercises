//Given a string of words, `get_all_words` returns an array containing every
//word in the given string

//loop through string to determine size of array of words
//when you get to a space or reach the end, increase size by 1

//loop through string again
//when you get to a space or reach the end, the current word is done. Add it to array of words

//assumptions:
//no punctuation, 
//given string doesn't start/end with a space,
//one space between words

import java.util.Arrays;

String[] getAllWords(String stringOfWords) {
  int wordCounter = 0;
  for (int i = 0; i < stringOfWords.length(); i++) {
    if (stringOfWords.charAt(i) == ' ' || i == stringOfWords.length() - 1) {
      wordCounter++;
    }
  }
  
  String[] allWords = new String[wordCounter];
  String nextWord = "";  
  wordCounter = 0;
  for (int i = 0; i <= stringOfWords.length(); i++) {
    if (i == stringOfWords.length() || stringOfWords.charAt(i) == ' ') {
      allWords[wordCounter] = nextWord;
      wordCounter++;
      nextWord = "";
    } else {
      nextWord += stringOfWords.charAt(i);
    }
  }
  return allWords;
}

void setup() {
  String string1 = "The best part of waking up is Folgers in your cup";
  String string2 = "Gotta catch em all";
    
  println(Arrays.toString(getAllWords(string1)));
  println(Arrays.toString(getAllWords(string2)));
}
