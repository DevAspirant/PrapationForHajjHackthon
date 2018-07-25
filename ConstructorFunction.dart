class Person {
  String firstName;
  int Age;

//  constaractor
  Person(this.firstName, this.Age);

  print_info() {
    print(firstName);
    print(Age);
  }
}

void main() {
  var person = new Person('Ammar',31); // assign the value here as the constructor function used into the class 
  person.print_info();
}
