//Given an array, `remove_element_from_back_of_new` returns a new array containing
//all but the last element in the given array

//assume we're using an array of ints

import java.util.*;

int[] removeElementFromBackOfNew(int[] givenArray) {
  int[] newArray = new int[givenArray.length - 1];
  for (int i = 0; i < newArray.length; i++) {
    newArray[i] = givenArray[i];
  }
  return newArray;
}

void setup() {
  int[] array2 = {1, 2, 3, 4, 5, 6, 7, 8};
  println(Arrays.toString(removeElementFromBackOfNew(array2))); //[1, 2, 3, 4, 5, 6, 7]
}
