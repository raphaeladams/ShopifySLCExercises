//Given the radius(number) of a circle, `perimeter_of_circle` returns the
//perimeter of the circle

float perimeterOfCircle(float radius) {
  return 3.14159*2*radius; 
}

void setup() {
  println(perimeterOfCircle(23)); //144.513
  println(perimeterOfCircle(7)); //43.982
}
