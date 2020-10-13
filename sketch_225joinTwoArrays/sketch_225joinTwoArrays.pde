//Given two arrays, `join_two_arrays` returns an array with all the elements of
//the first array followed by the second array

int[] joinTwoArrays(int[] array1, int[] array2) {
  int[] joinedArray = new int[array1.length + array2.length];
  
  for(int i = 0; i < array1.length; i++) {
    joinedArray[i] = array1[i];
  }
  
  for(int i = 0; i < array2.length; i++) {
    joinedArray[i + array1.length] = array2[i];
  }
  
  return joinedArray;
}

void setup() {
  int[] first = {1, 2, 3};
  int[] second = {4, 5, 6};
  
  println(joinTwoArrays(first, second)); 
}
