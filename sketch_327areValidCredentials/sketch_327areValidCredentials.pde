//Given a username and a password(both strings), `are_valid_credentials` returns
//a boolean (true or false) if the name is longer than 4 characters, and if the
//password is at least 8 characters long.

boolean areValidCredentials(String username, String pwd) {
  if (username.length() > 4 && pwd.length() >= 8) {
    return true;
  } else {
    return false;
  }
}

void setup() {
  String username1 = "kewlkid16";
  String password1 = "pword";
  String username2 = "poop";
  String password2 = "supersecurepassword123";
  
  println(areValidCredentials(username1, password1)); //false
  println(areValidCredentials(username2, password2)); //false
  println(areValidCredentials(username2, password1)); //false
  println(areValidCredentials(username1, password2)); //true
}
