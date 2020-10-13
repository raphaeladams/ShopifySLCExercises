//Given the length(number) and width(number) of a rectangle, `perimeter_of_rectangle`
//returns the perimeter of the rectangle

int perimeterOfRectangle(int rectLength, int rectWidth) {
  return ((2*rectLength) + (2*rectWidth));
}

void setup() {
  println(perimeterOfRectangle(25, 12)); //74
  println(perimeterOfRectangle(8, 31)); //78
}
