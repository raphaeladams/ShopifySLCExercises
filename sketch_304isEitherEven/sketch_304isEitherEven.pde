//Given two numbers, `is_either_even` returns a boolean (true or false),
//indicating whether one of the numbers is even

//assuming this is asking to return true when AT LEAST one of the numbers is even
//so, if both are even, return true

boolean isEitherEven(int num1, int num2) {
  if (num1%2 == 0 || num2%2 == 0) {
    return true; 
  } else {
    return false;
  }
}

void setup() {
  println(isEitherEven(46, 13)); //true
  println(isEitherEven(51, 67)); //false
  println(isEitherEven(2, 4)); //true
}
