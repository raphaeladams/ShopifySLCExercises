//Given an array and an element(can be any data type), `add_to_front_of_new_array`
//returns an array containing all elements of the given array with the given
//element added to the front of the array

//We can only accept whatever data type we specify -- let's go with int

int[] addToFrontOfNewArray(int[] givenArray, int element) {
  int[] newArray = new int[givenArray.length + 1];
  newArray[0] = element;
  for (int i = 1; i < newArray.length; i++) {
    newArray[i] = givenArray[i-1];
  }
  return newArray;
}

void setup() {
  int[] arr = {2, 3, 4};
  println(addToFrontOfNewArray(arr, 1)); //{1, 2, 3, 4}
}
