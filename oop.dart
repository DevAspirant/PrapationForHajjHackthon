// main function - الدالة الرئيسة
void main(){
//   create instance or object - عمل الاوبجيكت
  var deck = new Deck(); // call the constructor - 
//   deck.shuffle();
//   print(deck.cardsWithSuit('Diamonds')); // print every cards with suit Diamonds 
  print(deck);
  print('Check the Deal');
//   print(deck);
  print(deck.deal(5));
// 	print(deck);
  print('remove');
  deck.removeCards('Ace','Diamonds');
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
    for(var mySuit in suits){
      for(var rank in ranks){
        var card = new Card(
          rank: rank,
          suit: mySuit
        );
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
  
  cardsWithSuit(String suit){
    // create a function that search into the card object
// return cards.where((card){
//       return card.suit == suit; // a boolean value that check if there is cards with suite
//     });
    // solve it into another way 
    return cards.where((card) => card.suit == suit);
  }
  // remove the card from deck if it has been selected 
  deal(int handSize){
    var hand = cards.sublist(0, handSize);
    cards=cards.sublist(handSize);
  	return hand;
  }
  
  removeCards(String suit, String rank){
    // access to cards 
//     cards.removeWhere((card){
//       return (card.suit == suit) && (card.rank == rank); });
    // another way
     cards.removeWhere((card) => (card.suit == suit) && (card.rank == rank));
  }
  
}
// define the Card class - 
class Card{
//   Adding fields 
  String suit;
  String rank;
  
//   constructor 
  // {} is for named parameter 
  Card({this.rank, this.suit});
//   methods 
  toString(){
    return '$rank of $suit'; 
  }
}
