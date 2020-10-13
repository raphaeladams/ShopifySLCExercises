//Given two numbers, `are_both_odd` returns a boolean (true or false),
//indicating whether the both numbers are odd

boolean areBothOdd(int num1, int num2) {
  if ((float)num1/2 != num1/2 && (float)num2/2 != num2/2) {
    return true;
  } else {
    return false;
  }
}

void setup() {
  println(areBothOdd(46, 13)); //false
  println(areBothOdd(51, 67)); //true
  println(areBothOdd(2, 2)); //false
}
