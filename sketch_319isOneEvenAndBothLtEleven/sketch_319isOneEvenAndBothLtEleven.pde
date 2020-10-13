//Given two numbers, `is_one_even_and_both_lt_eleven` returns a boolean (true or false),
//indicating whether at least one of them is even and both of them are less than eleven.

//assume both numbers are integers

boolean isOneEvenAndBothLtEleven(int num1, int num2) {
  if ((num1%2 == 0 || num2%2 == 0) && (num1 < 11 && num2 < 11)) {
    return true;
  } else {
    return false;
  }
}

void setup() {
  println(isOneEvenAndBothLtEleven(6, 8)); //true
  println(isOneEvenAndBothLtEleven(20, 4)); //false
  println(isOneEvenAndBothLtEleven(9, 2)); //true
  println(isOneEvenAndBothLtEleven(9, 9)); //false
}
