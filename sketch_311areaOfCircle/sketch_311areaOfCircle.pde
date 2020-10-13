//Given the radius(number) of a circle, `area_of_circle` returns the
//area of the circle

float areaOfCircle(float radius) {
  return 3.14159 * pow(radius, 2);
}

void setup() {
  println(areaOfCircle(12)); //452.389
  println(areaOfCircle(3)); //28.274
}
