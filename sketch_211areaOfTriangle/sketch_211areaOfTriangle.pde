//Given the base(number) and the height(number) of a triangle, `area_of_triangle`
//returns the area of the triangle

float areaOfTriangle(float givenBase, float givenHeight) {
  return 0.5 * givenBase * givenHeight; 
}

void setup() {
  println(areaOfTriangle(10, 12)); //60
  println(areaOfTriangle(14, 5)); //35
}
