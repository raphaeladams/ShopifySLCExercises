//Given a whole number, `is_even_without_modulo` returns a boolean (true or false)
//indicating whether the given number is even

//Do not use the built-in Ruby method `%`
//It should work for negative numbers

//assume we are given an int

boolean isEvenWithoutModulo(int givenNum) {
  if (givenNum == (givenNum/2)*2) {
    return true;
  } else {
    return false;
  }
}

void setup() {
  println(isEvenWithoutModulo(91)); //false
  println(isEvenWithoutModulo(-57)); //false
  println(isEvenWithoutModulo(438)); //true
  println(isEvenWithoutModulo(-24)); //true
  println(isEvenWithoutModulo(0)); //true
}
