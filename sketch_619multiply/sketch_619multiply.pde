/*
Write a method called `multiply`

# Given two numbers, `multiply` returns their product


# ==============================================================================
# Notes
# ==============================================================================
# Do not use the built-in Ruby method `*`
*/

int multiply(int num1, int num2) {
  int smaller;
  int larger;
  if (num1 > num2) {
    larger = num1;
    smaller = num2;
  } else {
    larger = num2;
    smaller = num1;
  }
  
  int product = 0;
  for (int i = 0; i < smaller; i++) {
    product += larger;
  }
  return product;
}

void setup() {
  println(multiply(7, 3)); //21
  println(multiply(0, 52)); //0
  println(multiply(100, 100)); //10000
}
