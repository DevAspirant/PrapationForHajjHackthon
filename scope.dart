// Scope
var outSideVar = "out side variable";
void main() {

  insideFunction(){
   var agentName = "yakuza"; 
  outSideVar = "Ammar";
  print("From inside : $outSideVar");
}
insideFunction();  
}


