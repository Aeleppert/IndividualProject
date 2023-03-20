class Card {
  int suit, pt; // suits: 0=spades 1=hearts 2=clubs 3=diamonds; pt by 2=2 K=13
  boolean red, stack, hover, dis;
  String face;
  int x1, y1, x2, y2;
  boolean click = false;
  
  // some of these var arent used
  Card (int s, int p, boolean r, boolean st,int tempX1, int tempY1, int tempX2, int tempY2, String f, boolean d, boolean c) {
    suit = s;
    pt = p;
    red = r;
    stack = st;
    x1 = tempX1;
    x2 = tempX2;
    y1 = tempY1;
    y2 = tempY2;
    face = f;
    dis = d;
    click = c;
  }
  
  void display() {
    // so we can turn off display
    if (dis) {
    
    // when card is clicked
    if (click == true) {
      fill(240,240,0);
      rect(x1-2,y1-2,x2-x1+4,y2-y1+4,5);
      // red vs white
      if(red == true) {
      fill(231, 50, 19);
    } else {
      fill(239, 230, 213);
    }
      rect(x1,y1,x2-x1,y2-y1,5);
    textSize(25);    
    fill(0);
    textAlign(CENTER, TOP);
    //suit display
    if(suit == 0){
      text("O",(x1+x2)/2,y1+2);
    } else if(suit ==1){
      text("X",(x1+x2)/2,y1+2);
    } else if(suit == 2){
      text("+",(x1+x2)/2,y1+2);
    } else{
      text("△",(x1+x2)/2,y1+2);
    }
    // number display
    text(face, (x1+x2)/2, (y1+y2)/2);
    
    // when its not clicked
    } else {
      // red vs white
      if(red == true) {
      fill(231, 50, 19);
    } else {
      fill(239, 230, 213);
    }
      rect(x1,y1,x2-x1,y2-y1,5);
    textSize(25);
    fill(0);
    textAlign(CENTER, TOP);
    // suit display
    if(suit == 0){
      text("O",(x1+x2)/2,y1+2);
    } else if(suit ==1){
      text("X",(x1+x2)/2,y1+2);
    } else if(suit == 2){
      text("+",(x1+x2)/2,y1+2);
    } else{
      text("△",(x1+x2)/2,y1+2);
    }
    // number display
    text(face, (x1+x2)/2, (y1+y2)/2);
    }
   }
  }
}
