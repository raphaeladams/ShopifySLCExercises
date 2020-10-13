//Given an array, `remove_element_from_back` returns the given array with the
//last element removed

//assume we are using arrays of integers

int[] removeElementFromBack(int[] givenArray) {
  int[] tempArray = new int[givenArray.length - 1];
  for (int i = 0; i < tempArray.length; i++) {
    tempArray[i] = givenArray[i];
  }
  givenArray = tempArray;
  return givenArray;
}

void setup() {
  int[] array1 = {1, 2, 3, 4, 5, 6, 7, 8};
  array1 = removeElementFromBack(array1);
  // ^ we have to reassign the value of array1 this way because java passes by value.
  //When a function is called, it uses a COPY of the given variable and doesn't alter 
  //the original variable itself. 
  
  println(array1);
}
