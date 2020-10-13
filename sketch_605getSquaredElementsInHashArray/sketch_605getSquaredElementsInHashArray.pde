//Given a hash and a key(symbol), `get_squared_elements_in_hash_array` returns
//an array containing all the squared elements of the array located at the given
//key

//Notes
//Assume that all elements in the array will be int
//Return nil:
//   a) if the array is empty
//   b) if the value at the given key is not an array
//   c) if the key does not exist in the hash

import java.util.Arrays;

int[] getSquaredElementsInHashArray(HashMap<String, int[]> givenHash, String givenKey) {
  int[] givenArray = givenHash.get(givenKey);
  if (givenArray == null || givenArray.length == 0) {
    return null;
  } else {
    int[] squares = new int[givenArray.length];
    for (int i = 0; i < givenArray.length; i++) {
      squares[i] = (int)pow(givenArray[i], 2);
    }
    return squares;
  }
}

void setup() {
  HashMap<String, int[]> apparel = new HashMap<String, int[]>();
  int[] brandName = {1};
  int[] sizes = {28, 29, 30, 31, 32, 33, 34, 35, 36};
  int[] materials = {1, 2, 6};
  int[] price = {45};
  apparel.put("name", brandName);
  apparel.put("sizes", sizes);
  apparel.put("materials", materials);
  apparel.put("price", price); 

  HashMap<String, int[]> student = new HashMap<String, int[]>();
  int[] name = {1};
  int[] grade = {7};
  int[] scores = {82, 65, 86, 95, 72, 89};
  int[] extracurriculars = {12, 6, 23, 4, 18, 3};
  int[] failedCourses = {};
  student.put("name", name); 
  student.put("grade", grade); 
  student.put("scores", scores);
  student.put("extracurriculars", extracurriculars);
  student.put("failedCourses", failedCourses);
  
  println(Arrays.toString(getSquaredElementsInHashArray(apparel, "sizes"))); //[784, 841, 900, 961, 1024, 1089, 1156, 1225, 1296]
  println(Arrays.toString(getSquaredElementsInHashArray(student, "scores"))); //[6724, 4225, 7396, 9025, 5184, 7921]
  println(Arrays.toString(getSquaredElementsInHashArray(student, "grade"))); //[49]
  println(Arrays.toString(getSquaredElementsInHashArray(student, "friends"))); //null
  println(Arrays.toString(getSquaredElementsInHashArray(student, "failedCourses"))); //null
}
