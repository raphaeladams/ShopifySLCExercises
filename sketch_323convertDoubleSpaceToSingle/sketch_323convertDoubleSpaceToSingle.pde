//Convert double space to single

String convertDoubleSpaceToSingle(String givenString) {
  String newString = "";  
  for (int i = 0; i < givenString.length(); i++) {
    if (!(givenString.charAt(i) == ' ' && givenString.charAt(i-1) == ' ')) {
      newString += givenString.charAt(i);
    }
  } 
  return newString;
}

void setup() {
  String myString = "this  has  lots  of  double  space";
  String someString = "wow  so  many  spaces  here  in  this  space-filled  string";
  
  println(convertDoubleSpaceToSingle(myString));
  println(convertDoubleSpaceToSingle(someString));
}
