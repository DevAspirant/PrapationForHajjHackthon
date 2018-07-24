
class Person {
  String firstName;
  int Age; 
 
  print_info(){
    print(this.firstName);
    print(this.Age);
  }
}

void main(){
  var person = new Person();
  person.firstName = 'Ammar';
  person.Age = 31;
  person.print_info();
}


