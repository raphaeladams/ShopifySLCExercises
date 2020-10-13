//Given an array and a index(number), `get_all_elements_but_index` returns an
//array containing all elements of the given array except for the element in
//in given index position

//The change applied to the array will persist permanently on the given array, do
//not construct a cloned array that omits the element

//assume we are working with an array of int values

import java.util.*;

int[] getAllElementsButIndex(int[] givenArray, int index) {
  if (index < 0 || index >= givenArray.length) {
    println("Index out of array bounds, returning null");
    return null;
  } else {
    int[] newArray = new int[givenArray.length - 1];
    for (int i = 0; i < givenArray.length; i++) {
      if (i < index) {
        newArray[i] = givenArray[i];
      } else if (i > index) {
        newArray[i-1] = givenArray[i];
      }
    }
    givenArray = newArray;
    return givenArray;
  }
}

void setup() {
  int[] luckyNum = {7, 10, 2, 50, 88};
  luckyNum = getAllElementsButIndex(luckyNum, 3);
  println(Arrays.toString(luckyNum)); //[7, 10, 2, 88]
}
