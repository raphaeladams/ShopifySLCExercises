//Given an array and a value, `add_to_front_of_array` adds the given value to
//the front of the given array and returns the updated array

int[] addToFrontOfArray(int givenValue, int[] givenArray) {
  int[] newArray = new int[givenArray.length + 1];
  newArray[0] = givenValue;
  for (int i = 1; i < newArray.length; i++) {
    newArray[i] = givenArray[i-1];
  }
  
  givenArray = newArray;
  return givenArray;
}

void setup() {
  int[] funNumbers = {23, 7, 10, 99};  
  funNumbers = addToFrontOfArray(100, funNumbers);   
  println(funNumbers);
}
