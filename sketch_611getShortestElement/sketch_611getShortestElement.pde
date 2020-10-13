//Given an array of strings, `get_shortest_elements` returns the shortest string
//in the given array

//Notes
//Assume that all elements in the array will be strings
//Return am empty string:
//   a) if the array is empty
//   b) if there's more than one string with the longest length, return the first
//      element to appear

String getShortestElement(String[] givenArray) {
  if (givenArray.length <= 0) {
    return "";
  } else {
    String shortest = givenArray[0];
    for (int i = 1; i < givenArray.length; i++) {
      if (givenArray[i].length() < shortest.length()) {
        shortest = givenArray[i];
      }
    }
    return shortest;
  }
}

void setup() {
  String[] animals = {"giraffe", "falcon", "fox", "aardvark", "chimpanzee", "ape", "elephant"};
  String[] instruments = {"trombone", "flute", "glockenspiel", "euphonium", "saxophone"};
  String[] nothingness = {};
  
  println(getShortestElement(animals)); //fox
  println(getShortestElement(instruments)); //flute
  println(getShortestElement(nothingness)); //""
}
