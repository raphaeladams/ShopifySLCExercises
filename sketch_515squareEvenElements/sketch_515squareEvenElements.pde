//Given an array of numbers, `square_even_elements` returns a new array containing
//only the squared values of the even elements in the given array


//Notes
//Do not modify the given array, it should remain unchanged
//Assume all elements in the array are numbers
//Return an empty array:
//   a) if the array is empty
//   b) if all elements are odd

//assume the array contains only integers

import java.util.*;

int[] squareEvenElements(int[] givenArray) {
  int evenCount = 0;
  HashMap<Integer, Integer> squaredValues = new HashMap<Integer, Integer>();
  
  for (int i : givenArray) {
    if (i%2 == 0) {
      evenCount++;
      squaredValues.put(evenCount - 1, i*i);
    }
  }
  
  int[] arrayToReturn = new int[evenCount];
  for (int j : squaredValues.keySet()) {
    arrayToReturn[j] = squaredValues.get(j);
  }
  
  return arrayToReturn;
}

void setup() {
  int[] scores = {100, 84, 91, 85, 91, 78};
  int[] ages = {15, 12, 12, 14, 11, 12};
  int[] luckyNum = {7, 7, 7};
  int[] nothing = {};
  
  println(Arrays.toString(squareEvenElements(scores))); //[10000, 7056, 6084]
  println(Arrays.toString(squareEvenElements(ages))); //[144, 144, 196, 144]
  println(Arrays.toString(squareEvenElements(luckyNum))); //[]
  println(Arrays.toString(squareEvenElements(nothing))); //[]
}
