//Given a score(number), `get_grade_from_score` returns a string representing
//the letter grade corresponding to the given score

//Notes
//Score to grade conversion
// 100 - 90  => "A"
//  89 - 80  => "B"
//  79 - 70  => "C"
//  69 - 60  => "D"
//  59 - 0   => "F"

//If the given score is greater than 100 or less than 0, return the string
//"Sorry, your score of <- insert number -> cannot be converted."

//assume score is an int

import java.util.*;

String getGradeFromScore(int score) {
  String grade = null;
  if (score < 0 || score > 100) {
    grade = "Sorry, your score of " + score + " cannot be converted.";
  } else if (score >= 90) {
    grade = "A";
  } else if (score >= 80) {
    grade = "B";
  } else if (score >= 70) {
    grade = "C";
  } else if (score >= 60) {
    grade = "D";
  } else {
    grade = "F";
  }
  return grade;
}

void setup() {
  println(getGradeFromScore(35)); //F
  println(getGradeFromScore(93)); //A
  println(getGradeFromScore(70)); //C
  println(getGradeFromScore(0)); //F
  println(getGradeFromScore(89)); //B
  println(getGradeFromScore(246)); //can't be converted
  println(getGradeFromScore(-32)); //can't be converted
}
