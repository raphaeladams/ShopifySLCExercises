//Given two numbers, `is_less_than` returns a boolean (true or false),
//indicating whether `num2` is less than `num1`

boolean isLessThan(int num1, int num2) {
  if (num2 < num1) {
    return true;
  } else {
    return false;
  }
}

void setup() {
  println(isLessThan(19, 3)); //true
  println(isLessThan(32, 21)); //true
  println(isLessThan(9, 50)); //false
}
