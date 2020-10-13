//Given an object and a key(symbol), `get_smallest_elment_at_property` returns
//the smallest element in the array located at the given key

//Notes
//Assume that all elements in the array will be numbers
//Return nil:
//   a) if the array is empty
//   b) if the value at the given key is not an array
//   c) if the key does not exist in the hash

//assume we are given a <String, int[]> hash

import java.util.*;

Integer getSmallestElementAtProperty(HashMap<String, int[]> givenHash, String givenKey) {
  if (givenHash.get(givenKey) == null || givenHash.get(givenKey).length == 0) {
    return null;
  } else {
    int smallest = givenHash.get(givenKey)[0]; 
    for (int i = 1; i < givenHash.get(givenKey).length; i++) {
      if (givenHash.get(givenKey)[i] < smallest) {
        smallest = givenHash.get(givenKey)[i];
      }
    }
    return smallest;
  }
}

void setup() {
  HashMap<String, int[]> apparel = new HashMap<String, int[]>();
  int[] sizes = {28, 29, 30, 31, 32, 33, 34, 35, 36};
  apparel.put("sizes", sizes);
  
  HashMap<String, int[]> student = new HashMap<String, int[]>();
  int[] scores = {82, 65, 86, 95, 72, 89};
  int[] failedCourses = {};
  student.put("scores", scores);
  student.put("failedCourses", failedCourses);
  
  println(getSmallestElementAtProperty(apparel, "sizes")); //28
  println(getSmallestElementAtProperty(apparel, "msrp")); //null
  println(getSmallestElementAtProperty(student, "failedCourses")); //null
  println(getSmallestElementAtProperty(student, "scores")); //65
  println(getSmallestElementAtProperty(student, "name")); //null
}
