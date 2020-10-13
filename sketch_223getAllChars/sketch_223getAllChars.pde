//Given a string, `get_all_chars` returns an array containing every character
//in the word

//If the given string is an empty string, return an empty array

char[] getAllChars(String givenWord) {
  char[] allChars = new char[givenWord.length()];
  for (int i = 0; i < givenWord.length(); i++) {
    allChars[i] = givenWord.charAt(i);
  }
  return allChars;
}

void setup() {
  String word = "Awesome"; 
  String otherWord = "pikachu"; 
  String emptyString = "";
  
  println(getAllChars(word));
  println(getAllChars(otherWord));
  println(getAllChars(emptyString));
}
