//Given four arrays, `join_four_arrays` returns an array with all the elements of
//the first array followed by the second, third, and fourth array

//assume we are working with arrays of integers

int[] joinFourArrays(int[] array1, int[] array2, int[] array3, int[] array4) {
  int[] joinedArray = new int[array1.length + array2.length 
    + array3.length + array4.length];

  for (int i = 0; i < joinedArray.length; i++) {
    if (i < array1.length) {
      joinedArray[i] = array1[i];
    } else if (i < array1.length + array2.length) {
      joinedArray[i] = array2[i - array1.length];
    } else if (i < array1.length + array2.length + array3.length) {
      joinedArray[i] = array3[i - array1.length - array2.length];
    } else {
      joinedArray[i] = array4[i - array1.length - array2.length - array3.length];
    }
  }
  return joinedArray;
}

void setup() {
  int[] first = {1, 2, 3};
  int[] second = {4, 5, 6};
  int[] third = {7, 8, 9};
  int[] fourth = {10, 11, 12};
  
  println(joinFourArrays(first, second, third, fourth));
}
