// Arguments 
void main() {
print(sayHello("Ammar",32));  
}
String sayHello(String name, [int age]){
  var finalResult = "$name";
  if(age != null){
    finalResult = "$finalResult is $age";
  }
  return finalResult;
}

