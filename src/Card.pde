class Card {
  int suit, pt; // suits: 0=spades 1=hearts 2=clubs 3=diamonds; pt by 2=2 K=13
  boolean red, stack, hover;
  String face;
  int x1, y1, x2, y2;
  boolean click = false;
  
  Card (int s, int p, boolean r, boolean st,int tempX1, int tempY1, int tempX2, int tempY2, String f) {
    suit = s;
    pt = p;
    red = r;
    stack = st;
    x1 = tempX1;
    x2 = tempX2;
    y1 = tempY1;
    y2 = tempY2;
    face = f;
  }
  
  void display() {
    //not yet finished for highlight staying there.
    if (x1<mouseX && mouseX<x2 && mouseY>y1 && mouseY<y2 && mousePressed || click == true) { 
      //highlight card
      fill(240,240,0);
      rect(x1-2,y1-2,x2-x1+4,y2-y1+4,5);
      click = true;
    } 
    if(red == true) {
      fill(245, 50,0);
    } else {
      fill(0,50,245);
    }
    rect(x1,y1,x2-x1,y2-y1,5);
    textSize(35);
    fill(255);
    text(face, (x1+x2)/2, (y1+y2)/2);
  }
  
  // movement method(s)
  void move() {
    //if (click == true) {
      
  }
 
  // *enhanced for loop* to randomize the *stack*
}
