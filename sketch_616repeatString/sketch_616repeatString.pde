//Given a string and a number, `repeat_string` returns the given string repeated
//the given number of times

//Return an empty string if:
//   a) if the number is 0 or smaller

String repeatString(String givenString, int givenNum) {
  String stringToReturn = "";
  for(int i = 0; i < givenNum; i++) {
    stringToReturn += givenString;
  }
  return stringToReturn;
}

void setup() {
  println(repeatString("hi", 10)); 
  println(repeatString("poop", 0)); 
  println(repeatString("ten", 5)); 
}
