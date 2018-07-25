class Person {
  String firstName;
  int Age;

//  constaractor
  Person(this.firstName);

  print_info() {
    print(firstName);
    print(this.Age);
  }
}

void main() {
  var person = new Person();
  person.firstName = 'Ammar';
  person.Age = 31;
  person.print_info();
}
