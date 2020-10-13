//Given an array, `remove_element_from_front` returns the given array with the
//first element removed

//assume we are working with arrays of integers

import java.util.*;

int[] removeElementFromFront(int[] givenArray) {
  int[] newArray = new int[givenArray.length - 1];
  for (int i = 1; i < givenArray.length; i++) {
    newArray[i-1] = givenArray[i];
  }
  return newArray;
}

void setup() {
  int[] array = {1, 2, 3, 4, 5, 6, 7, 8}; 
  array = removeElementFromFront(array); 
  println(Arrays.toString(array)); //[2, 3, 4, 5, 6, 7, 8]
}
