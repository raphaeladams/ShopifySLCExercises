//Given an array of arrays, `transform_array_data` returns an array containing
//hashes, transforming the data from one format to another

//Notes
//Do not assume that there will be the same of rows or key-value pairs
//Return an empty array:
//   a) if the hash is empty

//assume that all given arrays are String[]

import java.util.*;

HashMap<String, String>[] transformArrayData(String[][][] givenArray) {
  HashMap<Integer, HashMap<String, String>> hashesToReturn = new HashMap<Integer, HashMap<String, String>>();
  int numOfHashes = 0;
  for (String[][] i : givenArray) {
    numOfHashes++;
    HashMap<String, String> newHash = new HashMap<String, String>();
    for (String[] j : i) {
      newHash.put(j[0], j[1]);
    }
    hashesToReturn.put(numOfHashes - 1, newHash);
  }
  HashMap<String, String>[] arrayOfHashesToReturn = new HashMap[numOfHashes];
  for (int i : hashesToReturn.keySet()) {
    arrayOfHashesToReturn[i] = hashesToReturn.get(i);
  }
  return arrayOfHashesToReturn;
}

void setup() {
  String[][][] characters = {
    {
    {"name", "Mary"}, {"age", "12"}, {"pet", "litte lamb"}
    }, 
    {
    {"name", "Humpty"}, {"age", "13"}, {"pet", "king's horses"}, {"alive", "false"}
    },
  };

  String[][][] employees = {
    {
    {"name", "Sally"}, {"location", "Toronto"}, {"role", "Manager"}, {"rank", "2"}
    }, 
    {
    {"name", "Bob"}, {"location", "Toronto"}, {"role", "CSR"}, {"rank", "53"}
    }, 
    {
    {"name", "Jacob"}, {"location", "Vancouver"}, {"role", "CSR"}, {"rank", "17"}
    }, 
    {
    {"name", "Sammy"}, {"location", "Toronto"}, {"rank", "24"}
    }, 
  };
  
  String[][][] emptyArray = {};
  
  println(Arrays.toString(transformArrayData(characters)));
  println(Arrays.toString(transformArrayData(employees))); 
  println(Arrays.toString(transformArrayData(emptyArray))); 
}
