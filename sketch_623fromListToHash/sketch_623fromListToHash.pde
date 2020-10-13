/*
# Given an array of arrays, `from_list_to_hash` returns a hash with
# each pair of elements in the array as a key-value pair

# ==============================================================================
# Notes
# ==============================================================================
# Do not assume that there will be the same number of elements in the given
# array.
#
# The keys in the hash should be symbols
#
# Return an empty hash:
#   a) if the array is empty
*/

HashMap<String, String> fromListToHash(String[][] givenArray) {
  HashMap<String, String> hashToReturn = new HashMap<String, String>();
  for (String[] i : givenArray) {
    hashToReturn.put(i[0], i[1]);
  }
  return hashToReturn;
}

void setup() {
  String[][] drink = {{"name", "Coconut Water"}, {"calories", "70"}, {"sugars", "14g"}};
  String[][] chair = {{"make", "Herman Miller"}, {"colour", "black"}, {"qty", "245"}, {"size", "medium"}};
  
  println(fromListToHash(drink)); //{:name=>"Coconut Water", :calories=>70, :sugars=>"14g"}
  println(fromListToHash(chair)); //{:make=>"Herman Miller", :colour=>"black", :qty=>"245", :size=>"medium"}
}
