//Given an array and an index(number), `get_all_elements_but_index_new` returns
//an array containing all elements of the given array except for the element in
//the given index position

//assume we are working with arrays of integers

int[] getAllElementsButIndex(int[] givenArray, int index) {
  if (index < 0 || index >= givenArray.length) {
    println("Index out of bounds"); 
    return null;
  } else {
    int[] newArray = new int[givenArray.length - 1];
    int positionInNewArray = 0;  
    for (int i = 0; i < givenArray.length; i++) {
      if (i != index) {
        newArray[positionInNewArray] = givenArray[i];
        positionInNewArray++;
      }
    }  
    return newArray;
  }
}

void setup() {
  int[] luckyNum = {7, 10, 2, 50, 88};
  println(getAllElementsButIndex(luckyNum, 3)); //7, 10, 2, 88
}
