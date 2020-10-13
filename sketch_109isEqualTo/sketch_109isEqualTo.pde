//Given two numbers, `is_equal_to` returns a boolean (true or false),
//indicating whether `num2` is equal to `num1`

boolean isEqualTo(int num1, int num2) {
  if (num1 == num2) {
    return true;
  } else {
    return false;
  }
}

void setup() {
  println(isEqualTo(4, 7)); //false
  println(isEqualTo(82, 23)); //false
  println(isEqualTo(10, 10)); //true
}
