// main function - الدالة الرئيسة
void main(){
//   create instance or object - عمل الاوبجيكت
  var deck = new Deck(); // call the constructor - 
  deck.shuffle();
  print(deck);

}

class Deck {
//   Adding Fileds -  
  List<Card> cards = []; // init the list - 
// constructor -  الدالة الناشئة 
  Deck(){
    // defines - 
    var ranks = ['Ace','Two','Three','Four','Five'];
    var suits = ['Diamonds','Hearts','Clubs','Spades'];
    
    // Loops that insert the all - 
    for(var suit in suits){
      for(var rank in ranks){
        var card = new Card(rank, suit);
        cards.add(card); // add into the list - 
      }
    }
  }
  //   methods -  
  toString(){
    return cards.toString(); // this is for print the list function - 
  }
  shuffle(){
    cards.shuffle(); // called shuffle method for the cards 
  }
}
// define the Card class - 
class Card{
//   Adding fields 
  String suit;
  String rank;
  
//   constructor 
  Card(this.rank, this.suit);
//   methods 
  toString(){
    return '$rank of $suit'; 
  }
}
