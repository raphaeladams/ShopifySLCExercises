//Given an array, `get_all_elements_but_first` returns an array with all the
//elements but the first

int[] getAllElementsButFirst(int[] givenArray) {
  if (givenArray.length < 2) {
    //no elements to return
    return null;
  } else {
    int[] arrayToReturn = new int[givenArray.length - 1];
    for (int i = 1; i < givenArray.length; i++) {
      arrayToReturn[i-1] = givenArray[i];
    }
    return arrayToReturn;
  }
}

void setup() {
  int[] array1 = {1, 2, 3, 4, 5, 6, 7, 8};
  int[] array2 = {1};
  
  println(getAllElementsButFirst(array1));
  println(getAllElementsButFirst(array2));
}
