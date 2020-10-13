//Given a hash and key(symbol), `get_sum_of_elements_in_hash_array` returns
//the sum of all the elements in array located at the given key

//Notes
//Assume that all elements in the array will be numbers
//Return the number 0:
//   a) if the array is empty
//   b) if the value at the given key is not an array
//   c) if the key does not exist in the hash

//assume HashMap<String, int[]>

int getSumOfElementsInHashArray(HashMap<String, int[]> givenHash, String givenKey) {
  int[] givenArray = givenHash.get(givenKey);
  int sum = 0;
  if (givenArray != null && givenArray.length > 0) {
    for (int i : givenArray) {
      sum += i;
    }
  } 
  return sum;
}

void setup() {
  HashMap<String, int[]> apparel = new HashMap<String, int[]>();
  int[] name = {1};
  int[] sizes = {2, 4, 6, 8, 10, 12};
  int[] materials = {1, 2, 3};
  int[] price = {62};
  apparel.put("name", name);
  apparel.put("sizes", sizes);
  apparel.put("materials", materials);
  apparel.put("price", price);

  HashMap<String, int[]> teacher = new HashMap<String, int[]>();
  int[] teacherName = {1};
  int[] classSizes = {10, 13, 5, 22, 6};
  int[] courses = {1001, 1002, 2003, 3004};
  int[] awards = {};
  teacher.put("teacherName", teacherName);
  teacher.put("classSizes", classSizes);
  teacher.put("courses", courses); 
  teacher.put("awards", awards);

  println(getSumOfElementsInHashArray(apparel, "sizes")); //42
  println(getSumOfElementsInHashArray(apparel, "reviews")); //0
  println(getSumOfElementsInHashArray(teacher, "classSizes")); //56
  println(getSumOfElementsInHashArray(teacher, "teacherName")); //1
  println(getSumOfElementsInHashArray(teacher, "awards")); //0
}
