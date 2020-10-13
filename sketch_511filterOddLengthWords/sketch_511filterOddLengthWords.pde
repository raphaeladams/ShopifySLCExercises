//Given an array of strings, `filter_odd_length_words` returns an array
//containing only the elements of the given array whose lengths are odd numbers

//Notes
//Return an empty array:
//   a) if the array is empty
//   b) if none of the elements in the array are odd

import java.util.*;

String[] filterOddLengthWords(String[] givenArray) {
  int numOdd = 0;
  for (String i : givenArray) {
    if (i.length()%2 != 0) {
      numOdd++;
    }
  }
  String[] oddWords = new String[numOdd];
  int oddIndex = 0;
  for (String i : givenArray) {
    if (i.length()%2 != 0) {
      oddWords[oddIndex] = i;
      oddIndex++;
    }
  }
  return oddWords;
}

void setup() {
  String[] friends = {"kay", "lisa", "tayles", "sabrina", "patrick"};
  String[] brands = {"nike", "adidas", "reebok", "puma", "underarmour", "oakley", "vans"};
  String[] weaknesses = {};
  
  println(Arrays.toString(filterOddLengthWords(friends))); //["kay", "sabrina", "patrick"]
  println(Arrays.toString(filterOddLengthWords(brands))); //["underarmour"]
  println(Arrays.toString(filterOddLengthWords(weaknesses))); //[]
}
