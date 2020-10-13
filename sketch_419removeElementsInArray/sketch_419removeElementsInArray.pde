//Given an array of numbers and `n`(number), `removeElementsInArray`
//returns an array containing all the elements of the array except for the
//elements that match `n`

//Do not modify the given array, it should remain unchanged
//Return an empty array:
//   a) if all the elements match `n`
//   b) if an empty array is passed in to the method

//assume n is an int, and that the array has int values

import java.util.*;

int[] removeElementsInArray(int[] givenArray, int givenNum) {
  int sizeOfArray = givenArray.length;   
  for (int i : givenArray) {
    if (i == givenNum) {
      sizeOfArray--;
    }
  }
  int[] arrayToReturn = new int[sizeOfArray];
  int arrayIndex = 0;
  for (int i : givenArray) {
    if (i != givenNum) {
      arrayToReturn[arrayIndex] = i;
      arrayIndex++;
    }
  }
  return arrayToReturn;
}

void setup() {
  int[] scores = {100, 84, 91, 85, 91, 78};
  int[] ages = {15, 12, 12, 14, 11, 12};
  int[] luckyNum = {7, 7, 7};
  int[] empty = {};
  int[] last = {1, 2, 3};
  
  println(Arrays.toString(removeElementsInArray(scores, 91))); //[100, 84, 85, 78]
  println(Arrays.toString(removeElementsInArray(ages, 12))); //[15, 14, 11]
  println(Arrays.toString(removeElementsInArray(luckyNum, 7))); //[]
  println(Arrays.toString(removeElementsInArray(empty, 3))); //[]
  println(Arrays.toString(removeElementsInArray(last, 4))); //[1, 2, 3]
}
