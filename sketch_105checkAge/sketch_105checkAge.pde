//Given a person's name(string) and age(number), `check_age` returns one of two messages:
//If they are younger than 21, the message should read "Go home, <name>!".
//If they are 21 or older, the message should read "Welcome to da club, <name>!".

String checkAge(String givenName, int givenAge) {
  if (givenAge < 21) {
    return "Go home, " + givenName + "!";
  } else {
    return "Welcome to da club, " + givenName + "!";
  }
}

void setup() {
  println(checkAge("Sally", 45)); //welcome to da club, Sally! (why are you in a club at 45?)
  println(checkAge("Bob", 7)); //go home, Bob! (this sounds like Addiction in Hull)
}
