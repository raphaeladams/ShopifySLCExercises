//Given an array and an index position(number), `get_elements_after_index` returns
//a new array with all the elements after (but not including) the given index

//assume we are working with arrays of integers

int[] getElementsAfterIndex(int[] givenArray, int givenIndex) {
  if (givenIndex < 0 || givenIndex >= givenArray.length) {
    println("Given index out of bounds");
    return null;
  } else {
    int[] newArray = new int[givenArray.length - givenIndex - 1];
    for (int i = givenIndex + 1; i < givenArray.length; i++) {
      newArray[i - givenIndex - 1] = givenArray[i];
    }
    return newArray;
  }
}

void setup() {
  int[] arr1 = {1, 2, 3, 4, 5, 6, 7, 8};
  //int[] arr2 = {1};
  //int[] arr3 = {1, 2};
  println(getElementsAfterIndex(arr1, 2)); //{6, 7, 8}
}
