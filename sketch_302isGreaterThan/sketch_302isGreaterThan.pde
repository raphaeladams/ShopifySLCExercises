//Given two numbers, `is_greater_than` returns a boolean (true or false),
//indicating whether `num2` is greater than `num1`

boolean isGreaterThan(int num1, int num2) {
  if (num2 > num1) { 
    return true;
  } else { 
    return false;
  }
}

void setup() {
  println(isGreaterThan(5, 13)); //true
  println(isGreaterThan(23, 40)); //true
  println(isGreaterThan(17, 9)); //false
  println(isGreaterThan(17, 17)); //false
}
