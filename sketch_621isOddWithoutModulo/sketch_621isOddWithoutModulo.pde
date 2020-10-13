/*
Given a whole number, `is_odd_without_modulo` returns a boolean (true or false)
# indicating whether the given number is odd


# ==============================================================================
# Notes
# ==============================================================================
# Do not use the built-in Ruby method `%`
# It should work for negative numbers
*/

boolean isOddWithoutModulo(int givenNum) {
  if (pow(-1, givenNum) == -1) {
    return true;
  }
  return false;
}

void setup() {
  println(isOddWithoutModulo(91)); //true
  println(isOddWithoutModulo(-57)); //true
  println(isOddWithoutModulo(438)); //false
  println(isOddWithoutModulo(-24)); //false
  println(isOddWithoutModulo(0)); //false
}
