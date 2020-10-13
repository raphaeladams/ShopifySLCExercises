//Given an array, `first_element_in_array` returns the first element within
//the given array

String firstElementInArray(String[] givenArray) {
  return givenArray[0];
}

void setup() {
  String[] myPokemon = {"pikachu", "bulbasaur", "charmander", "clefairy",};
  println(firstElementInArray(myPokemon)); //"pikachu"
  
  String[] myFruits = {"lychee", "tangerine", "peach", "banana", "pineapple",};
  println(firstElementInArray(myFruits)); //"lychee"
}
