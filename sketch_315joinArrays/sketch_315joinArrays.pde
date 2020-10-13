//Given two arrays, `join_arrays` returns an array with the elements of `array1`
//in order, followed by the elements `array2`

//assume we are working with arrays of integers

int[] joinArrays(int[] array1, int[] array2) {
  int[] joinedArray = new int[array1.length + array2.length];
  
  for (int i = 0; i < joinedArray.length; i++) {
    if (i < array1.length) {
      joinedArray[i] = array1[i]; 
    } else {
      joinedArray[i] = array2[i - array1.length]; 
    }
  }
  return joinedArray;
}

void setup() {
  int[] arr1 = {10, 8};
  int[] arr2 = {6, 4, 2, 0};
  println(joinArrays(arr1, arr2)); //{10, 8, 6, 4, 2, 0}
}
