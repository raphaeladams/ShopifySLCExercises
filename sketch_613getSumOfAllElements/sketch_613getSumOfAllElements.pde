//Given an array of numbers, `get_sum_of_all_elements` returns the sum
//of all the elements in the array

//Notes
//Assume that all elements in the array will be int
//Return the number 0:
//   a) if the array is empty

int getSumOfAllElements(int[] givenArray) {
  int sum = 0;
  for (int i : givenArray) {
    sum += i;
  }
  return sum;
}

void setup() {
  int[] scores = {100, 84, 91, 85, 91, 78};
  int[] ages = {15, 12, 12, 14, 11, 12}; 
  int[] luckyNum = {7, 7, 7};
  int[] nothing = {};
  
  println(getSumOfAllElements(scores)); //529
  println(getSumOfAllElements(ages)); //76
  println(getSumOfAllElements(luckyNum)); //21
  println(getSumOfAllElements(nothing)); //0
}
