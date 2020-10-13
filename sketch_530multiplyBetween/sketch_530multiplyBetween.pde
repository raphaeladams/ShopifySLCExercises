//Given two numbers, `multiply_between` returns the product between the two
//given numbers, beginning at the first number up until (but excluding) the
//second number

//Notes
//The product between 1 and 5 is 24
// 1 * 2 * 3 * 4 = 24
//Return the number 0:
//   a) if the second number is not greater than the first number

//assume numbers are integers

int multiplyBetween(int num1, int num2) {
  if (num2 <= num1) {
    return 0;
  } else {
    int product = 1;
    for (int i = num1; i < num2; i++) {
      product *= i;
    }
    return product;
  }
}

void setup() {
  println(multiplyBetween(1, 5)); //24
  println(multiplyBetween(12, 3)); //0
  println(multiplyBetween(71, 71)); //0
  println(multiplyBetween(3, 8)); //2520
}
