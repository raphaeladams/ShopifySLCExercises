//Write a method called `get_string_length`

//Given a string, `get_string_length` returns the length of the given string


//Notes
//Do not use the built-in Ruby method `length` or `size` in the implementation
//of your method

//Return the number 0:
//   a) if the string is empty

int getStringLength(String givenString) {
  char[] chars = givenString.toCharArray(); 
  int stringLength = 0;

  for (char i : chars) {
    stringLength++;
  }  
  return stringLength;
}

void setup() {
  println(getStringLength("May the force be with you")); //25
  println(getStringLength("Who's milkshake brings all the boys to the yard")); //47
  println(getStringLength("")); //0
}
