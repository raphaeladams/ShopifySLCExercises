//Given a principal, an interest rate, a compounding frequency, and a time in years,
//`get_compound_interest` returns the amount of compound interest generated
//rounded to two decimal places

import java.util.*;

float getCompoundInterest(float principal, float interestRate, int freq, int time) {
  float total = (principal * pow((1 + (interestRate/freq)), (freq*time))) - principal;
  return Math.round((total*100.0)/100.0);
}

void setup() {
  println(getCompoundInterest(1500, 0.043, 4, 6)); //438.84
  println(getCompoundInterest(11000, 0.032, 12, 2)); //726.02
  println(getCompoundInterest(5000, 0.05, 12, 10)); //3235.05
}
