//Given an array of numbers, `get_product_of_all_elements` returns the product
//of all the elements in the array

//Notes
//Assume that all elements in the array will be int. Return int
//Return the number 0:
//   a) if the array is empty

int getProductOfAllElements(int[] givenArray) {
  if (givenArray.length <= 0) {
    return 0;
  } else {
    int product = 1;
    for (int i : givenArray) {
      product *= i;
    }
    return product;
  }
}

void setup() {
  int[] scores = {100, 84, 91, 85, 91, 78};
  int[] ages = {15, 12, 12, 14, 11, 12}; 
  int[] luckyNum = {7, 7, 7}; 
  int[] nothing = {};
  
  println(getProductOfAllElements(scores)); //461185452000
  println(getProductOfAllElements(ages)); //3991680
  println(getProductOfAllElements(luckyNum)); //343
  println(getProductOfAllElements(nothing)); //0
}
