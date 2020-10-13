//Given two numbers, `average` returns the average of the two numbers
//average: the sum of the given values, divided by the number of given values

float average(float num1, float num2) {
  return (num1+num2) / 2;
}

void setup() {
  println(average(23, 25)); //24
  println(average(44, 20)); //32
}
