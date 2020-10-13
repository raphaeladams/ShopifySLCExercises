//Given a hash and a key(string), `get_all_but_last_element_in_hash_array`
//returns an array containing all but the element of the array located at the
//given key


//Notes
//Do not modify the given array, it should remain unchanged
//Return nil:
//   a) if the array is empty
//   b) if the value at the given key is not an array
//   c) if the key does not exist in the hash

//assume HashMap is <String, int[]>

import java.util.*;

int[] getAllButLast(HashMap<String, int[]> givenHash, String givenKey) {
  int[] givenArray = givenHash.get(givenKey);
  if (givenArray == null || givenArray.length == 0) {
    return null;
  } else {
    int[] arrayToReturn = new int[givenArray.length - 1];
    for (int i = 0; i < arrayToReturn.length; i++) {
      arrayToReturn[i] = givenArray[i];
    }
    return arrayToReturn;
  }
}

void setup() {
  HashMap<String, int[]> apparel = new HashMap<String, int[]>();
  int[] name = {1};
  int[] sizes = {28, 29, 30, 31, 32, 33, 34, 35, 36};
  int[] materials = {1, 2, 3};
  int[] price = {45};
  apparel.put("name", name);
  apparel.put("sizes", sizes);
  apparel.put("materials", materials);
  apparel.put("price", price);
  
  HashMap<String, int[]> student = new HashMap<String, int[]>();
  int[] studentName = {1};
  int[] grade = {7};
  int[] scores = {82, 65, 86, 95, 72, 89};
  int[] extracurriculars = {1, 2, 3};
  int[] failedCourses = {};
  student.put("student", studentName);
  student.put("grade", grade);
  student.put("scores", scores); 
  student.put("extracurriculars", extracurriculars); 
  student.put("failedCourses", failedCourses);
  
  println(Arrays.toString(getAllButLast(apparel, "materials"))); //[1, 2]
  println(Arrays.toString(getAllButLast(student, "scores"))); //[82, 65, 86, 95, 72]
  println(Arrays.toString(getAllButLast(student, "grade"))); //[]
  println(Arrays.toString(getAllButLast(student, "friends"))); //null
  println(Arrays.toString(getAllButLast(student, "failedCourses"))); //null
}
