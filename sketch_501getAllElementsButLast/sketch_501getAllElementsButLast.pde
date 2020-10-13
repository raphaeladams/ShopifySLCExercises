//Given an array, `get_all_elements_but_last` returns an array with all the
//elements but the last

//assume we are working with an int[] array

import java.util.*;

int[] getAllElementsButLast(int[] givenArray) {
  int[] arrayToReturn = new int[givenArray.length - 1];
  for (int i = 0; i < arrayToReturn.length; i++) {
    arrayToReturn[i] = givenArray[i];
  }
  return arrayToReturn;
}

void setup() {
  int[] array2 = {1, 2, 3, 4, 5, 6, 7, 8};
  println(Arrays.toString(getAllElementsButLast(array2))); //[1, 2, 3, 4, 5, 6, 7]
}
