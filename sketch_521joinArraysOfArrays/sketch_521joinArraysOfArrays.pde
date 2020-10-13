//Given a nested array (array of arrays), `join_arrays_of_arrays` returns the
// a single array containing all the elements of the nested array

//assume given array is type int[][]

import java.util.*;

int[] joinArraysOfArrays(int[][] givenArray) {
  int numElements = 0;
  HashMap<Integer, Integer> allElements = new HashMap<Integer, Integer>(); 

  for (int[] i : givenArray) {
    for (int j : i) {
      numElements++;
      allElements.put(numElements - 1, j);
    }
  }
  
  int[] arrayToReturn = new int[numElements];
  for (int k : allElements.keySet()) {
    arrayToReturn[k] = allElements.get(k);
  }
  return arrayToReturn;
}

void setup() {
  int[][] array1 = {{1, 2, 3}, {4, 5, 6}, {7, 8, 9}};
  int[][] array2 = {{5, 6}, {}, {9, 0, 1}};
  int[][] array3 = {{}, {}}; 
  
  println(Arrays.toString(joinArraysOfArrays(array1))); //[1, 2, 3, 4, 5, 6, 7, 8, 9]
  println(Arrays.toString(joinArraysOfArrays(array2))); //[5, 6, 9, 0, 1]
  println(Arrays.toString(joinArraysOfArrays(array3))); //[]
}
