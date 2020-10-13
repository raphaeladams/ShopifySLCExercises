//Given a hash and a key(symbol), `get_elements_greater_than_five` returns an
//array containing all the elements of the array located at the given key that
//are greater than five

//Do not modify the given array, it should remain unchanged
//Return an empty array:
//   a) if the key does not exist in the hash
//   b) if the value at the given key is not an array
//   c) if the array is empty
//   d) if the array contains no elements greater than five

//assume we are working with arrays of integers

import java.util.*;

int[] getElementsGreaterThanFive(HashMap<String, int[]> givenHash, String givenKey) {
  if (givenHash.get(givenKey) == null) {
    return new int[0];
  } else if (givenHash.get(givenKey).length == 0) {
    return givenHash.get(givenKey);
  } else {
    int numOfElements = 0;
    for (int i : givenHash.get(givenKey)) {
      if (i > 5) {
        numOfElements++;
      }
    }
    int[] arrayToReturn = new int[numOfElements];
    int arrayCounter = 0;
    for (int i : givenHash.get(givenKey)) {
      if (i > 5) {
        arrayToReturn[arrayCounter] = i;
        arrayCounter++;
      }
    }
    return arrayToReturn;
  }
}

void setup() {
  HashMap<String, int[]> daycare = new HashMap<String, int[]>();
  int[] ages = {5, 7, 10, 4, 8, 10, 7, 3};
  daycare.put("age", ages);
  
  HashMap<String, int[]> film = new HashMap<String, int[]>();
  int[] ratings = {9, 10, 10, 8, 2, 10, 8, 10, 9};
  int[] durations = {120};
  int[] awards = {};
  film.put("rating", ratings);
  film.put("duration", durations);
  film.put("awards", awards);
  
  println(Arrays.toString(getElementsGreaterThanFive(daycare, "age"))); //[7, 10, 8, 10, 7]
  println(Arrays.toString(getElementsGreaterThanFive(daycare, "name"))); //[]
  println(Arrays.toString(getElementsGreaterThanFive(film, "rating"))); //[9, 10, 10, 8, 10, 8, 10, 9]
  println(Arrays.toString(getElementsGreaterThanFive(film, "duration"))); //[120]
  println(Arrays.toString(getElementsGreaterThanFive(film, "awards"))); //[]
}
