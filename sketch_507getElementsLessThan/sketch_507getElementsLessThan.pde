//Given a hash, a key(symbol), and a number(n) `get_elements_less_than_n` returns
//an array containing all the elements of the array located at the given key that
//are less than `n`

//Do not modify the given hash, it should remain unchanged
//Return an empty array:
//   a) if the key does not exist in the hash
//   b) if the value at the given key is not an array
//   c) if the array is empty
//   d) if the array contains no elements less than `n`

//assume the has is type <String, int[]>

import java.util.*;

int[] getElementsLessThanN(HashMap<String, int[]> givenHash, String givenKey, int n) {
  if (givenHash.get(givenKey) == null) {
    return new int[0];
  } else {
    int countLessThanN = 0;
    for (int i : givenHash.get(givenKey)) {
      if (i < n) {
        countLessThanN++;
      }
    }
    int[] arrayToReturn = new int[countLessThanN];
    countLessThanN = 0;
    for (int i : givenHash.get(givenKey)) {
      if (i < n) {
        arrayToReturn[countLessThanN] = i;
        countLessThanN++;
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
  
  println(Arrays.toString(getElementsLessThanN(daycare, "age", 6))); //[5, 4, 3]
  println(Arrays.toString(getElementsLessThanN(daycare, "name", 4))); ///[]
  println(Arrays.toString(getElementsLessThanN(film, "rating", 8))); //[2]
  println(Arrays.toString(getElementsLessThanN(film, "duration", 3))); //[]
  println(Arrays.toString(getElementsLessThanN(film, "awards", 10))); //[]
}
