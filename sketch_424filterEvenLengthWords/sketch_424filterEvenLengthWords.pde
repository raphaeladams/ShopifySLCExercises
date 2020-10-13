//Given an array of strings, `filter_even_length_words` returns an array
//containing only the elements of the given array whose lengths are even numbers

//Notes
//Assume that all elements in the array will be strings
//Return an empty array:
//   a) if the array is empty
//   b) if none of the elements in the array are even

import java.util.*;

String[] filterEvenLengthWords(String[] givenArray) {
  if (givenArray.length <= 0) {
    return new String[0];
  } else {
    int numOfEvenWords = 0;
    for (String i : givenArray) {
      if (i.length()%2 == 0) {
        numOfEvenWords++;
      }
    }
    String[] evenWords = new String[numOfEvenWords];
    int evenIndex = 0;
    for (String i : givenArray) {
      if (i.length()%2 == 0) {
        evenWords[evenIndex] = i;
        evenIndex++;
      }
    }
    return evenWords;
  }
}

void setup() {
  String[] friends = {"kay", "lisa", "tayles", "sabrina", "patrick"};
  String[] brands = {"nike", "adidas", "reebok", "puma", "underarmour", "oakley", "vans"};
  String[] weaknesses = {};
  
  println(Arrays.toString(filterEvenLengthWords(friends))); //[lisa, tayles]
  println(Arrays.toString(filterEvenLengthWords(brands))); //[nike, adidas, reebok, puma, oakley, vans]
  println(Arrays.toString(filterEvenLengthWords(weaknesses))); //[]
}
