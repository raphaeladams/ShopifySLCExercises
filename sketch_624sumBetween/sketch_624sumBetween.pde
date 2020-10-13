/*
# Given two numbers, `sum_between` returns the product between the two
# given numbers, beginning at the first number up until (but excluding) the
# second number


# ==============================================================================
# Notes
# ==============================================================================
# The product between 1 and 5 is 10
# 1 + 2 + 3 + 4 = 10
#
# Return the number 0:
#   a) if the second number is not greater than the first number
*/

int sumBetween(int num1, int num2) {
  if (num2 <= num1) {
    return 0;
  } else {
    return ((num2 - num1) * (num2 + num1 - 1)) / 2;
  }
}

void setup() {
  println(sumBetween(1, 5)); //10
  println(sumBetween(12, 3)); //0
  println(sumBetween(71, 71)); //0
  println(sumBetween(3, 8)); //25
}
