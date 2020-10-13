//Given an array of numbers, `get_largest_element` returns the largest number
//in the given array

//Notes
//Assume that all elements in the array will be int
//Return the number 0:
//   a) if the array is empty

int getLargestElement(int[] givenArray) {
  if (givenArray.length <= 0) {
    return 0;
  } else {
    int largest = givenArray[0];
    for (int i = 1; i < givenArray.length; i++) {
      if (givenArray[i] > largest) {
        largest = givenArray[i];
      }
    }
    return largest;
  }
}

void setup() {
  int[] scores = {100, 84, 91, 85, 91, 78};
  int[] ages = {15, 12, 12, 14, 11, 12};
  int[] luckyNum = {7, 7, 7};
  int[] tens = {10, 10, 10, 10};
  int[] nothing = {};
  
  println(getLargestElement(scores)); //100
  println(getLargestElement(ages)); //15
  println(getLargestElement(luckyNum)); //7
  println(getLargestElement(tens)); //10
  println(getLargestElement(nothing)); //0
}
