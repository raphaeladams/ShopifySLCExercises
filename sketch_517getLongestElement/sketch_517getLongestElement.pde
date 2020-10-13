//Given an array of strings, `get_length_of_longest_elements` returns the length
//of the longest string in the given array

//Notes
//Assume that all elements in the array will be strings
// Return an empty string:
//   a) if the array is empty
//   b) if there's more than one string with the longest length, return the first
//      element to appear

String getLongestElement(String[] givenArray) {
  String longest = "";
  for (String i : givenArray) {
    if (i.length() > longest.length()) {
      longest = i;
    }
  }
  return longest;
}

void setup() {
  String[] animals = {"giraffe", "falcon", "fox", "aardvark", "chimpanzee", "ape", "elephant"};
  String[] instruments = {"trombone", "flute", "glockenspiel", "euphonium", "saxophone"};
  String[] nothingness = {};
  String[] fourLetterWords = {"fuch", "shot", "dams"};
  
  println(getLongestElement(animals)); //"chimpanzee"
  println(getLongestElement(instruments)); //"glockenspiel"
  println(getLongestElement(nothingness)); //""
  println(getLongestElement(fourLetterWords)); //"f***"
}
