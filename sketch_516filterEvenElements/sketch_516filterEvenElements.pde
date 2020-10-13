//Given an array of numbers, `filter_even_elements` returns an array containing
//only the elements of the given array whose values are even numbers

//Notes
//Assume that all elements in the array will be numbers
//Return an empty array:
//   a) if the array is empty
//   b) if none of the elements in the array are even

//assuming that array is type int[]

import java.util.*;

int[] filterEvenElements(int[] givenArray) {
  int evenCount = 0;
  HashMap<Integer, Integer> evenElements = new HashMap<Integer, Integer>();
  for (int i : givenArray) {
    if (i%2 == 0) {
      evenCount++;
      evenElements.put(evenCount - 1, i);
    }
  }
  int[] arrayToReturn = new int[evenCount];
  for (int j : evenElements.keySet()) {
    arrayToReturn[j] = evenElements.get(j);
  }
  return arrayToReturn;
}

void setup() {
  //tests!!
  int[] scores = {100, 84, 91, 85, 91, 78};
  int[] ages = {15, 12, 12, 14, 11, 12};
  int[] luckynum = {7, 7, 7};
  int[] tens = {10, 10, 10, 10};
  int[] nothing = {};
  
  println(Arrays.toString(filterEvenElements(scores))); //[100, 84, 78]
  println(Arrays.toString(filterEvenElements(ages))); //[12, 12, 14, 12]
  println(Arrays.toString(filterEvenElements(luckynum))); //[]
  println(Arrays.toString(filterEvenElements(tens))); //[10, 10, 10, 10]
  println(Arrays.toString(filterEvenElements(nothing))); //[]
}
