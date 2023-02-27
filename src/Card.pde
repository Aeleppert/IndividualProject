class Card {
  int suit, pt; // suits: 0=spades 1=hearts 2=clubs 3=diamonds; pt by 2=2 K=13
  boolean red, stack, hover, click;
  String face;
  //mouse points
  int px, py;
  //points of triangle
  int x1, y1, x2, y2, x3, y3;
  
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
    px = mouseX;
    py = mouseY;
    boolean hover = area(x1, y1, x2, y2, px, py);
    rect();
    fill(245, 50,0);
    textSize(15);
    textAlign(CENTER);
    text(face, x1+((x3-x1)/2), y1-20);
    if (hover && mousePressed == true) {
      //highlight card
      tint(0,153,204);
    } else {
      noTint();
    }
  }
  
  boolean area(float x1, float y1, float x2, float y2, float px, float py) {

    // this gets the area of the triangle
    float areaOrig = abs( (x2-x1)*(y2-y1) );

    // this gets the area of 3 triangles made between the point and the corners dependent on my mouse!
    float area1 =    abs( (x1-px)*(y2-py) - (x2-px)*(y1-py) );
    float area2 =    abs( (x2-px)*(y1-py) - (x1-px)*(y2-py) );


    // if the sum of the three areas equals the original, we're inside the triangle!
    if (area1 + area2== areaOrig) {
      //This is usually said hover = __ but for somereason that didn't work. So I copied the website code.
      return true;
    }
    return false;
  }

  void hover() {
    hover = area(x1, y1, x2, y2, px, py);
  }
  
  // movement method(s)
  
  // *enhanced for loop* to randomize the *stack*
}
