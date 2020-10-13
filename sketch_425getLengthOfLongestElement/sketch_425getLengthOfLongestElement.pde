//Given an array of strings, `get_length_of_longest_element` returns the length
//of the longest string in the given array

//Notes
//Return the number 0:
//   a) if the array is empty

int getLengthOfLongestElement(String[] givenArray) {
  if (givenArray.length <= 0) {
    return 0;
  } else {
    int longest = givenArray[0].length();
    for (int i = 1; i < givenArray.length; i++) {
      if (givenArray[i].length() > longest) {
        longest = givenArray[i].length();
      }
    }
    return longest;
  }
}

void setup() {
  String[] friends = {"kay", "lisa", "tayles", "sabrina", "patrick"};
  String[] brands = {"nike", "adidas", "reebok", "puma", "underarmour", "oakley", "vans"};
  String[] weaknesses = {};
  
  println(getLengthOfLongestElement(friends)); //7
  println(getLengthOfLongestElement(brands)); //11
  println(getLengthOfLongestElement(weaknesses)); //0
}
