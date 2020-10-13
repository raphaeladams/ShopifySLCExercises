//Given an array of strings, `get_length_of_shortest_elements` returns the length
//of the shortest string in the given array

//Notes
//Assume that all elements in the array will be strings
//Return the number 0:
//   a) if the array is empty

//return int

int getLengthOfShortestElement(String[] givenArray) {
  if (givenArray.length <= 0) {
    return 0;
  } else {
    int shortestLength = givenArray[0].length();
    for (int i = 1; i < givenArray.length; i++) {
      if (givenArray[i].length() < shortestLength) {
        shortestLength = givenArray[i].length();
      }
    }
    return shortestLength;
  }
}

void setup() {
  String[] friends = {"kay", "lisa", "tayles", "sabrina", "patrick"};
  String[] brands = {"nike", "adidas", "reebok", "puma", "underarmour", "oakley", "vans"};
  String[] weaknesses = {};
  
  println(getLengthOfShortestElement(friends)); //3
  println(getLengthOfShortestElement(brands)); //4
  println(getLengthOfShortestElement(weaknesses)); //0
}
