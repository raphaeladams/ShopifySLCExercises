//Given a whole number greater than 0 (`num`), `get_factorial_of_number` returns
//the factorial of `num`

//assume given num is an int

int factorial(int givenNum) {
  if (givenNum < 0) {
    println("Invalid number, returning 0");
    return 0;
  } else if (givenNum == 0) {
    return 1;
  } else {
    int fact = 1; 
    for (int i = 2; i <= givenNum; i++) {
      fact *= i;
    }
    return fact;
  }
}

void setup() {
  println(factorial(1)); //1
  println(factorial(7)); //5040
  println(factorial(5)); //120
  println(factorial(9)); //362880
  println(factorial(0)); //1
  println(factorial(-1)); //0
}
