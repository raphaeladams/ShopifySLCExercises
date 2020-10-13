//Given the length(number) and width(number) of a rectangle, `quadruple_area_of_rectangle`
//returns the quadrupled area of the rectangle

int quadrupleAreaOfRectangle(int rectLength, int rectWidth) {
  return 4*rectLength*rectWidth;
}

void setup() {
  println(quadrupleAreaOfRectangle(17, 24)); //1632
  println(quadrupleAreaOfRectangle(11, 5)); //220
}
