//Given an array of numbers and `n`(number), `save_elements_in_array`
//returns an array containing only the elements of the array that match `n`

//Do not modify the given array, it should remain unchanged
//Return an empty array:
//   a) if no elements match `n`
//   b) if an empty array is passed in to the method

//assume we are working with an array of ints

import java.util.*;

int[] saveElementsInArray(int[] givenArray, int givenNum) {
  int sizeOfArray = 0;
  for (int i : givenArray) {
    if (i == givenNum) {
      sizeOfArray++;
    }
  }
  int[] arrayToReturn = new int[sizeOfArray];
  for (int i = 0; i < sizeOfArray; i++) {
    arrayToReturn[i] = givenNum;
  }
  return arrayToReturn;
}

void setup() {
  int[] scores = {100, 84, 91, 85, 91, 78};
  int[] ages = {15, 12, 12, 14, 11, 12}; 
  int[] luckyNum = {7, 7, 7};
  int[] empty = {};
  
  println(Arrays.toString(saveElementsInArray(scores, 91))); //[91, 91]
  println(Arrays.toString(saveElementsInArray(luckyNum, 7))); //[7, 7, 7]
  println(Arrays.toString(saveElementsInArray(ages, 6))); //[]
  println(Arrays.toString(saveElementsInArray(empty, 3))); //[]
}
