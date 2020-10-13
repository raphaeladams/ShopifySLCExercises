//Given a string of words and a character of interest(string), `count_char_in_string`
//returns a the number of times the character appears in the given string of words

//If no matches are found in the string, return 0

int countCharInString(String phrase, String character) {
  int charCount = 0;  
  if (character.length() > 1 || character.length() < 1) {
    println("That's not a character");
  } else {
    for (int i = 0; i < phrase.length(); i++) {
      if ((str(phrase.charAt(i)).toLowerCase()).equals(character.toLowerCase())) {
        charCount++;
      }
    }
  }  
  return charCount;
}

void setup() {
  String word1 = "Hasta la vista baby";
  println(countCharInString(word1, "z")); //0
  
  String word2 = "I wanna bE the very best, like no one ever was";
  println(countCharInString(word2, "e")); //8
}
