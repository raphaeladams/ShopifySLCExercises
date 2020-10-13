//Given a number, `get_tripled_square_root` returns the square root of the given
//number, tripled and rounded to the nearest whole number

//assume we are given a float

int getTripledSquareRoot(float givenNumber) {
  return (int)(3*sqrt(givenNumber));
}

void setup() {
  println(getTripledSquareRoot(64)); //24
  println(getTripledSquareRoot(529)); //69
}
