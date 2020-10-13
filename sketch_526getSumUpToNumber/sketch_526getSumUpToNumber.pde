//Given a number, `get_sum_up_to_number` returns the sum of sequential numbers
//leading up to the given number, beginning at 0

//Notes
//If the number is 5, it should calculate the sum of 1 + 2 + 3 + 4 + 5 and
//return the number 15

//assume given number is a positive integer

int getSumUpToNumber(int givenNum) {
  return (int)((givenNum / 2.0) * (givenNum + 1)); 
  //pretzel problem at the end of The Number Devil
}

void setup() {
  println(getSumUpToNumber(5)); //15
  println(getSumUpToNumber(12)); //78
  println(getSumUpToNumber(48)); //1176
  println(getSumUpToNumber(0)); //0
}
