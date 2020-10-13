//Given an array and an index position(number), `get_elements_up_to_index` returns
//a new array with all the elements up until (but not including) the elements
//at the given index

//assume we are working with arrays of integers 

import java.util.*;

int[] getElementsUpToIndex(int[] givenArray, int givenIndex) {
  int[] newArray = new int[givenIndex];
  for (int i = 0; i < givenIndex; i++) {
    newArray[i] = givenArray[i];
  }
  return newArray;
}

void setup() {
  int[] array2 = {1, 2, 3, 4, 5, 6, 7, 8};
  println(Arrays.toString(getElementsUpToIndex(array2, 3))); //[1, 2, 3]
}
