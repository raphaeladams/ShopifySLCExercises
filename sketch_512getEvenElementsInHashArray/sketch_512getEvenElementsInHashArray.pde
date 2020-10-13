//Given a hash and a key(string), `get_even_elements_in_hash_array` returns
//an array containing all the even elements of the array located at the given
//key


//Notes
//Assume that all elements in the array will be numbers
//Return []:
//   a) if the array is empty
//   b) if the value at the given key is not an array
//   c) if the key does not exist in the hash

import java.util.*;

int[] getEvenElementsInHashArray(HashMap<String, int[]> givenHash, String givenKey) {
  if (givenHash.get(givenKey) == null || givenHash.get(givenKey).length <= 0) {
    return new int[0];
  } else {
    int evenCount = 0;
    for (int i : givenHash.get(givenKey)) {
      if (i%2 == 0) {
        evenCount++;
      }
    }
    int[] evenElements = new int[evenCount];
    int evenIndex = 0;
    for (int i: givenHash.get(givenKey)) {
      if (i%2 == 0) {
        evenElements[evenIndex] = i;
        evenIndex++;
      }
    }
    return evenElements;
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
  
  println(Arrays.toString(getEvenElementsInHashArray(apparel, "sizes"))); //[28, 30, 32, 34, 36]
  println(Arrays.toString(getEvenElementsInHashArray(student, "scores"))); //[82, 86, 72]
  println(Arrays.toString(getEvenElementsInHashArray(student, "grade"))); //[]
  println(Arrays.toString(getEvenElementsInHashArray(student, "friends"))); //[]
  println(Arrays.toString(getEvenElementsInHashArray(student, "failedCourses"))); //[]
}
