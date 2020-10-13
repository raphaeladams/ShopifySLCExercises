//Given an object and a key(symbol), `get_largest_elment_at_property` returns
//the largest element in the array located at the given key

//Notes
//Assume that all elements in the array will be numbers
//Return nil:
//   a) if the array is empty
//   b) if the value at the given key is not an array
//   c) if the key does not exist in the hash

import java.util.*;

Integer getLargestElementAtProperty(HashMap<String, int[]> givenHash, String givenKey) {
  int[] givenArray = givenHash.get(givenKey);
  if (givenArray == null || givenArray.length <= 0) {
    return null;
  } else {
    int largest = givenArray[0];
    for (int i = 1; i < givenArray.length; i++) {
      if (givenArray[i] > largest) {
        largest = givenArray[i]; 
      }
    }
    return largest; 
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
  
  println(getLargestElementAtProperty(apparel, "sizes")); //36
  println(getLargestElementAtProperty(apparel, "msrp")); //null
  println(getLargestElementAtProperty(student, "failedCourses")); //null
  println(getLargestElementAtProperty(student, "scores")); //95
  println(getLargestElementAtProperty(student, "studentName")); //1
}
