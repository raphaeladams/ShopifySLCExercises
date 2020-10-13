//Given a hash, key(symbol), and an index(number), `get_element_of_array_in_hash_array`
//returns the value of the element at the given index of the array located within
//the given hash at the given key

//Notes
//Return nil:
//   a) if the array is empty x
//   b) if the value at the given key is not an array x
//   c) if the key does not exist in the hash x
//   d) if the index is out of range

//assume the hash is <String, int[]>

import java.util.*;

Integer getElementOfArrayInHash(HashMap<String, int[]> givenHash, String givenKey, int index) {
  if (givenHash.get(givenKey) == null || 
    givenHash.get(givenKey).length == 0 ||
    index < 0 ||
    index >= givenHash.get(givenKey).length) {
      return null;
  } else {
    return givenHash.get(givenKey)[index];
  }
}

void setup() {
  HashMap<String, int[]> apparel = new HashMap<String, int[]>();
  int[]  sizes = {28, 29, 30, 31, 32, 33, 34, 35, 36};
  int[] materials = {1, 2, 3};
  apparel.put("sizes", sizes);
  apparel.put("materials", materials);
  
  HashMap<String, int[]> student = new HashMap<String, int[]>();
  int[] grade = {7};
  int[] scores = {82, 65, 86, 95, 72, 89};
  int[] extracurriculars = {1, 2, 3};
  int[] failedCourses = {};
  student.put("grade", grade);
  student.put("scores", scores);
  student.put("extracurriculars", extracurriculars);
  student.put("failedCourses", failedCourses);
  
  println(getElementOfArrayInHash(apparel, "materials", 2)); //3
  println(getElementOfArrayInHash(student, "scores", 4)); //72
  println(getElementOfArrayInHash(student, "grade", 3)); //null
  println(getElementOfArrayInHash(student, "friends", 1)); //null
  println(getElementOfArrayInHash(student, "failedCourses", 0)); //null
  println(getElementOfArrayInHash(student, "extracurriculars", 6)); //null
}
