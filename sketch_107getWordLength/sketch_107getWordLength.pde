//Given a word(string), `get_word_length` returns the length of the given word.

int getWordLength(String givenWord) {
  return givenWord.length();
}

void setup() {
  println(getWordLength("Polkaroo")); //8
  println(getWordLength("skinnamarinkydinkydink")); //22
}
