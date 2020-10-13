//Given a number, `cube` returns the cube of that number

float cube(float givenNumber) {
  return pow(givenNumber, 3);
}

void setup() {
  println(cube(3)); //27
  println(cube(26)); //17,576
}
