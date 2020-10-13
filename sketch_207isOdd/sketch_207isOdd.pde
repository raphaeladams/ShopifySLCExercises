//Given a number, `is_odd` returns a boolean (true or false),
//indicating whether the number is odd

boolean isOdd(int givenNumber) {
  if ((float)givenNumber/2 == givenNumber/2) {
    return false; 
    //even
  } else {
    return true; 
    //odd
    //Converting an odd number to a float & dividing by 2 will yield x.5
    //Dividing an odd int number will yield x (int division leaves off decimals)
  }
}

void setup() {
  println(isOdd(46)); //false
  println(isOdd(83)); //true
  println(isOdd(100)); //false
}
