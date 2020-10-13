//Given a hash and a key(string), `get_elements_equal_ten` returns an array
//containing all the elements of the array located at the given key that equal
//to ten

//Do not modify the given array, it should remain unchanged
//Return an empty array:
//   a) if the key does not exist in the hash
//   b) if the value at the given key is not an array
//   c) if the array is empty
//   d) if the array contains no elements equal to ten

import java.util.*;

int[] getElementsEqualTen(HashMap<String, int[]> givenHash, String givenKey) {
  if (givenHash.get(givenKey) == null) {
    return new int[0];
  } else if (givenHash.get(givenKey).length == 0) {
    return givenHash.get(givenKey);
  } else {
    int tenCount = 0;
    for (int i : givenHash.get(givenKey)) {
      if (i == 10) {
        tenCount++;
      }
    }
    int[] arrayOfTens = new int[tenCount];
    for (int i = 0; i < tenCount; i++) {
      arrayOfTens[i] = 10;
    }
    return arrayOfTens;
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
  
  println(Arrays.toString(getElementsEqualTen(daycare, "age"))); //[10, 10]
  println(Arrays.toString(getElementsEqualTen(daycare, "name"))); //[]
  println(Arrays.toString(getElementsEqualTen(film, "rating"))); //[10, 10, 10, 10];
  println(Arrays.toString(getElementsEqualTen(film, "duration"))); //[]
  println(Arrays.toString(getElementsEqualTen(film, "awards"))); //[]
}
