//Given an array of numbers, `get_smallest_element` returns the smallest number
//in the given array

//Notes
//Assume that all elements in the array will be ints
//Return the number 0:
//   a) if the array is empty

//assume we can return the FIRST value if there are multiple elements sharing the 
//smallest number value

//assume the array can have negative ints

int getSmallestElement(int[] givenArray) {
  if (givenArray.length <= 0) {
    return 0;
  } else {
    int smallest = givenArray[0];
    for (int i = 1; i < givenArray.length; i++) {
      if (givenArray[i] < smallest) {
        smallest = givenArray[i];
      }
    }
    return smallest;
  }
}

void setup() {
  int[] scores = {100, 84, 91, 85, 91, 78};
  int[] ages = {15, 12, 12, 14, 11, 12};
  int[] luckyNum = {7, 7, 7};
  int[] tens = {10, 10, 10, 10};
  int[] nothing = {};
  int[] negative = {-100, -10, 100, 0, -99};
  
  println(getSmallestElement(scores)); //78
  println(getSmallestElement(ages)); //11
  println(getSmallestElement(luckyNum)); //7
  println(getSmallestElement(tens)); //10
  println(getSmallestElement(nothing)); //0
  println(getSmallestElement(negative)); //-100
}
