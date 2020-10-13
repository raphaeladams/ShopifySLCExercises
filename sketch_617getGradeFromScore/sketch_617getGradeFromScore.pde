/*# Given a score(number), `get_grade_from_score` returns a string representing
 # the letter grade corresponding to the given score
 
 
 # ==============================================================================
 # Notes
 # ==============================================================================
 # Score to grade conversion:
 # 100 - 98  => "A+"
 #  97 - 93  => "A"
 #  92 - 90  => "A-"
 #  89 - 88  => "B+"
 #  87 - 83  => "B"
 #  82 - 80  => "B-"
 #  79 - 78  => "C+"
 #  77 - 73  => "C"
 #  72 - 70  => "C-"
 #  69 - 68  => "D+"
 #  67 - 63  => "D"
 #  62 - 60  => "D-"
 #  59 - 0   => "F"
 
 # Conditions on appending + or - sign:
 # 1) If the score is between 0 and 2 (inclusive) of a given range, return the
 #    letter grade with a "-"
 # 2) If the score is between 8 and 9 (inclusive) of a given range, return the
 #    letter grade with a "+"
 # 3) "F+" and "F-" do not exist. There is no need to append a sign to "F".
 
 # If the given score is greater than 100 or less than 0, return the string
 # "Sorry, your score of <- insert number -> cannot be converted."*/

String getGradeFromScore(int givenScore) {
  HashMap<int[], String> scoreToGrade = new HashMap<int[], String>();
  int[] A = {90, 100};
  int[] B = {80, 89};
  int[] C = {70, 79};
  int[] D = {60, 69};
  int[] F = {0, 59};
  scoreToGrade.put(A, "A");
  scoreToGrade.put(B, "B");
  scoreToGrade.put(C, "C");
  scoreToGrade.put(D, "D");
  scoreToGrade.put(F, "F");

  for (int[] i : scoreToGrade.keySet()) {
    if (givenScore > 59 && 
      givenScore >= i[0] && 
      givenScore <= (i[0] + 2)) {
      return scoreToGrade.get(i) + "-";
    } else if (givenScore > 59 && 
      givenScore >= (i[0] + 8) && 
      givenScore <= i[1]) {
      return scoreToGrade.get(i) + "+";
    } else if (givenScore >= i[0] && 
      givenScore <= i[1]) {
      return scoreToGrade.get(i);
    }
  }
  return "Sorry, your score of " + givenScore + " cannot be converted.";
}

void setup() {
  println(getGradeFromScore(35)); //F
  println(getGradeFromScore(93)); //A
  println(getGradeFromScore(70)); //C-
  println(getGradeFromScore(0)); //F
  println(getGradeFromScore(89)); //B+
  println(getGradeFromScore(246)); //Sorry, your score of 246 cannot be converted.
  println(getGradeFromScore(-32)); //Sorry, your score of -32 cannot be converted.
}
