//Given an array and an element(can be any data type), `add_to_back_of_new_array`
//returns an array containing all elements of the given array with the given
//element added to the back of the array

//assume we are working with int values

import java.util.*;

int[] addToBackOfNewArray(int[] givenArray, int element) {
  int[] newArray = new int[givenArray.length + 1];
  for (int i = 0; i < newArray.length; i++) {
    if (i < givenArray.length) {
      newArray[i] = givenArray[i];
    } else {
      newArray[i] = element;
    }
  }
  return newArray;
}

void setup() {
  int[] luckyNum = {7, 10, 2, 50};
  println(Arrays.toString(addToBackOfNewArray(luckyNum, 88))); //[7, 10, 2, 50, 88]
}
