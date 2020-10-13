//Given a string and a character, `get_index_of_char` returns the first position
//of the given character in the given string

//If a string contains more than one occurrence of a character, it should return
//the index of its first occurrence
//If the character does not exist in the string, the method should return -1
//Do not use the built-in Ruby method `index` in the implementation of your method

int getIndexOfChar(String givenString, char givenChar) {
  int index = 0;
  while (index < givenString.length()) {
    if (givenString.charAt(index) == givenChar) {
      return index;
    }
    index++;
  }
  index = -1;
  return index;
}

void setup() {
  String username1 = "kewlkid16";
  String password1 = "pword"; 
  String username2 = "poop"; 
  String password2 = "supersecurepassword123";
  
  println(getIndexOfChar(username1, 'k')); //0
  println(getIndexOfChar(username2, 'o')); //1
  println(getIndexOfChar(password1, 't')); //-1
  println(getIndexOfChar(password2, 'r')); //4
}
