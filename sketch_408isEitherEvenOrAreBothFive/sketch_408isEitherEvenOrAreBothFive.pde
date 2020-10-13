//Given two numbers, `is_either_even_or_are_both_five` returns a boolean (true or false),
//indicating whether at least one of them is even or both of them are five.

//assume we're given two integers

boolean isEitherEvenOrAreBothFive(int num1, int num2) {
  if ((num1%2 == 0 || num2%2 == 0) || (num1 == 5 && num2 == 5)) {
    return true;
  } else { 
    return false;
  }
}

void setup() {
  println(isEitherEvenOrAreBothFive(6, 13)); //true
  println(isEitherEvenOrAreBothFive(11, 5)); //false
  println(isEitherEvenOrAreBothFive(5, 5)); //true
}
