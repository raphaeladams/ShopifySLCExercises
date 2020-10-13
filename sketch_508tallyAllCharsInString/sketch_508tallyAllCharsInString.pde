//Given string, `count_all_chars_in_string` returns a hash where each key
//represents a character in the given string. The value of each key should be
//a numeric value representing how many times that character appeared in the
//string


//Notes
//The casing of a letter should not matter. The number of "b"s in the string
//"Bubble" should amount to 3

//Return an empty hash:
//   a) if the given string is empty

import java.util.*;

HashMap<Character, Integer> countAllCharsInString(String givenString) {
  givenString = givenString.toLowerCase();
  HashMap<Character, Integer> charCount = new HashMap<Character, Integer>();
  for (int i = 0; i < givenString.length(); i++) {
    char currentChar = givenString.charAt(i);
    if (charCount.get(currentChar) != null) {
      charCount.put(currentChar, charCount.get(currentChar) + 1);
    } else {
      charCount.put(currentChar, 1);
    }
  }
  return charCount;
}

void setup() {
  String string1 = "Bubble";
  String string2 = "Animaniacs";
  String empty = "";
  
  println(countAllCharsInString(string1)); //{b=3, u=1, l=1, e=1}
  println(countAllCharsInString(string2)); //{a=3, n=2, i=2, m=1, c=1, s=1}
  println(countAllCharsInString(empty)); //{}
}
