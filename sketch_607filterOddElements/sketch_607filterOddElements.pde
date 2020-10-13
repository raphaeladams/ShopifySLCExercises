//Given an array of numbers, `filter_odd_elements` returns an array containing
//only the elements of the given array whose values are odd numbers

//Notes
//Assume that all elements in the array will be numbers
//Return an empty array:
//   a) if the array is empty
//   b) if none of the elements in the array are odd

import java.util.Arrays;

int[] filterOddElements(int[] givenArray) {
  int oddCounter = 0;
  HashMap<Integer, Integer> oddNumbers = new HashMap<Integer, Integer>();
  for (int i : givenArray) {
    if (i%2 != 0) {
      oddCounter++;
      oddNumbers.put(oddCounter - 1, i);
    }
  }
  int[] arrayToReturn = new int[oddCounter];
  for (int i : oddNumbers.keySet()) {
    arrayToReturn[i] = oddNumbers.get(i);
  }
  return arrayToReturn;
}

void setup() {
  int[] scores = {100, 84, 91, 85, 91, 78};
  int[] ages = {15, 12, 12, 14, 11, 12}; 
  int[] luckyNum = {7, 7, 7}; 
  int[] tens = {10, 10, 10, 10};
  int[] nothing = {};
  
  println(Arrays.toString(filterOddElements(scores))); //[91, 85, 91]
  println(Arrays.toString(filterOddElements(ages))); //[15, 11]
  println(Arrays.toString(filterOddElements(luckyNum))); //[7, 7, 7]
  println(Arrays.toString(filterOddElements(tens))); //[]
  println(Arrays.toString(filterOddElements(nothing))); //[]
}
