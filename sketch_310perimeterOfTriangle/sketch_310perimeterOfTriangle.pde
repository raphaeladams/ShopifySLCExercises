//Given three sides(number) of a triangle, `perimeter_of_triangle`
//returns the perimeter of the triangle

int perimeterOfTriangle(int side1, int side2, int side3) {
  return side1 + side2 + side3;
}

void setup() {
  println(perimeterOfTriangle(84, 21, 63)); //168
  println(perimeterOfTriangle(7, 13, 9)); //29
}
