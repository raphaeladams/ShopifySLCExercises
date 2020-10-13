//Given an array, `last_element_in_array` returns the last element within
//the given array

//assume the given array has string values

String lastElementInArray(String[] givenArray) {
  return(givenArray[givenArray.length - 1]);
}

void setup() {
  String[] myPokemon = {"pikachu", "bulbasaur", "charmander", "clefairy"};
  println(lastElementInArray(myPokemon)); //clefairy
  
  String[] myFruits = {"lychee", "tangerine", "peach", "banana", "pineapple"};
  println(lastElementInArray(myFruits)); //pineapple
}
