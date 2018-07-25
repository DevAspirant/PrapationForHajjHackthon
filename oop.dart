// main function - الدالة الرئيسة
void main(){
//   create instance or object - عمل الاوبجيكت
  var deck = new Deck();
  
  
}

class Deck{
//   Adding Fileds -  
  List<Card> cards;
// constructor -  الدالة الناشئة 
  Deck(){
    // defines - 
    var ranks = ['Ace','Two','Three','Four','Five'];
    var suites = ['Diamonds','Hearts','Clubs','Spades'];
    
    // Loops that insert the all - 
    for(var suit in suites){
      for(var rank in ranks){
        var card = new Card(rank, suit);
        cards.add(card); // add into the list - 
      }
    }
    
  }
  //   methods -
  
}
// define the Card class - 
class Card{
//   Adding fields 
  String suit;
  String rank;
//   constructor 
  Card(){
    
  }
//   methods 
}
