//Given a number, `sum_digits` returns the sum of all its digits

//Notes
//If the number is negative, the first digit should count as negative

//return int

int sumDigits(int givenNum) {
  char[] givenArray = str(givenNum).toCharArray();
  int sum = 0;
  
  for (int i = 0; i < givenArray.length; i++) {
    if (i == 0 && givenArray[i] == '-') {
      sum -= (Integer.parseInt(str(givenArray[i+1])) * 2);
    } else {
      sum += Integer.parseInt(str(givenArray[i]));
    }
  }
  return sum;
}

void setup() {
  println(sumDigits(522731)); //20
  println(sumDigits(-5819)); //13
}
