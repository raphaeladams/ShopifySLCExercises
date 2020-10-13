//Write a method called `get_bill_total`

//Given the subtotal of a meal (pre-tax & pre-tip amount), `get_bill_total`
//returns the total amount due after tax and tip is added to the bill

//Notes
//Assume that sales tax is 13% and tip is 18%
//Tip should be applied to the subtotal, not on top of sales tax

import java.util.*;

float getBillTotal(float subtotal) {
  float tip = 0.18;
  float tax = 0.13;
  float total = subtotal * (1 + tip + tax); 
  return total;
}

void setup() {
  println(getBillTotal(52)); //68.12
  println(getBillTotal(83)); //108.73
}
