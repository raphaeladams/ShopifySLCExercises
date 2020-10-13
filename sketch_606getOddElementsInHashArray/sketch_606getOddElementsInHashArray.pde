//Given a hash and a key(symbol), `get_odd_elements_in_hash_array` returns
//an array containing all the odd elements of the array located at the given
//key


//Notes
//Assume that all elements in the array will be numbers
//Return nil:
//   a) if the array is empty
//   b) if the value at the given key is not an array
//   c) if the key does not exist in the hash

import java.util.Arrays;

int[] getOddElementsInHashArray(HashMap<String, int[]> givenHash, String givenKey) {
  int[] givenArray = givenHash.get(givenKey);
  if (givenArray == null || givenArray.length == 0) {
    return null;
  } else {
    int oddCounter = 0;
    HashMap<Integer, Integer> oddNumbers = new HashMap<Integer, Integer>();
    for (int i : givenArray) {
      if (i%2 != 0) {
        oddCounter++;
        oddNumbers.put(oddCounter - 1, i);
      }
    }
    int[] arrayToReturn = new int[oddCounter];
    for (int i : oddNumbers.keySet()) {
      arrayToReturn[i] = oddNumbers.get(i);
    }
    return arrayToReturn;
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
  
  println(Arrays.toString(getOddElementsInHashArray(apparel, "sizes"))); //[29, 31, 33, 35]
  println(Arrays.toString(getOddElementsInHashArray(student, "scores"))); //[65, 95, 89]
  println(Arrays.toString(getOddElementsInHashArray(student, "grade"))); //[7]
  println(Arrays.toString(getOddElementsInHashArray(student, "friends"))); //null
  println(Arrays.toString(getOddElementsInHashArray(student, "failedCourses"))); //null
}
