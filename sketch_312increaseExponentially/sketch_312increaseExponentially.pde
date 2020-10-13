//Given a number and an exponent(number), `increase_exponentially` returns the given
//number raised to the given exponent

//assume we are dealing with integers only

int increaseExponentially(int givenNumber, int givenExponent) {
  return (int)pow(givenNumber, givenExponent);
}

void setup() {
  println(increaseExponentially(6, 2)); //36
  println(increaseExponentially(11, 4)); //14,641
}
