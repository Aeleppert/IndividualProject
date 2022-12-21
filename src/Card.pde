abstract class Card {
  int location, suit, points;
  boolean red;
  
  abstract int place(int location); 
  abstract int foundation(int location);
  
}
