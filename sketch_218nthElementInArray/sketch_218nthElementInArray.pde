//Given an array and integer, `nth_element_in_array` returns the element at
//the given integer within the given array

String nthElementInArray(String[] givenArray, int givenInteger) {
  return givenArray[givenInteger];
}

void setup() {
  String[] myArray = {"pikachu", "bulbasaur", "charmander", "clefairy",};
  println(nthElementInArray(myArray, 2)); //charmander
  println(nthElementInArray(myArray, 0)); //pikachu
}
