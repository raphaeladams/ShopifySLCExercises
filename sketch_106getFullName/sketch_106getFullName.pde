//Given a first and a last name(strings), `get_full_name` returns a single string
//with the given first and last names separated by a single space.

String getFullName(String firstName, String lastName) {
  return firstName + " " + lastName;
}

void setup() {
  println(getFullName("Bertha", "Smith")); //"Bertha Smith"
  println(getFullName("Harry", "Gosling")); //"Harry Gosling"
}
