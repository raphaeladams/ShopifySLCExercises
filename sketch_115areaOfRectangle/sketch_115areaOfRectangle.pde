//Given the length(number) and width(number) of a rectangle, `area_of_rectangle`
//returns the area of the rectangle

int areaOfRectangle(int rectLength, int rectWidth) {
  return rectLength*rectWidth;
}

void setup() {
  println(areaOfRectangle(25, 12)); //300
  println(areaOfRectangle(8, 31)); //248
}
