//Given three words(strings), `get_shortest_word` returns an array containing two
//values, the first being the shortest word, the second being the length of that
//word

import java.util.*;

String[] getShortestWord(String word1, String word2, String word3) {
  String[] theWords = {word1, word2, word3};
  String[] arrayToReturn = {word1, str(word1.length())};
  for (int i = 1; i < theWords.length; i++) {
    if (theWords[i].length() < parseInt(arrayToReturn[1])) {
      arrayToReturn[0] = theWords[i]; 
      arrayToReturn[1] = str(theWords[i].length());
    }
  }
  return arrayToReturn;
}

void setup() {
  println(Arrays.toString(getShortestWord("poop", "fun", "fantastic"))); //[fun, 3]
  println(Arrays.toString(getShortestWord("charizard", "rattata", "jigglypuff"))); //[rattata, 7]
}
