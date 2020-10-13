//Given an array and a value, `add_to_back_of_array` adds the given value to
//the back of the given array and returns the updated array

//assume the array will have int values

int[] addToBackOfArray(int[] givenArray, int givenValue) {
  int[] newArray = new int[givenArray.length + 1];
  
  for(int i = 0; i < givenArray.length; i++) {
    newArray[i] = givenArray[i];
  }  
  newArray[givenArray.length] = givenValue;
  
  return newArray;
}

void setup() {
  int[] funNumbers = {23, 7, 10, 99};
  println(addToBackOfArray(funNumbers, 100));
}
