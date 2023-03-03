boolean menu = true;
Card kspades = new Card(0,13,true, true, 200,200,230,260,"K");

void setup(){
  size(700,500);
  
}

void draw(){
  if (menu) {
    background(0);
    textSize(40);
    textAlign(CENTER,CENTER);
    text("Devil's Handholding",350, 150);
    textSize(15);
    text("Card Game | Alice Leppert | 2023", 350,475);
    text("PLAY", 350,300);
  } else {
    text("MAIN MENU", 670,470);
  }
  
}

void mouseClicked() {
  if (menu && mouseX<370 && mouseX>330 && mouseY<310 && mouseY>290) {
    menu = false;
    background(75, 120, 150);
  } else if(!menu && mouseX<690 && mouseX>670 && mouseY<480 && mouseY>470) {

  }
}

void gameplay() {
  
  // variables and such
  
  
  
  // *buttons* for gameplay, player history, instructions
    // player history is stored in *I/O*
  // while loop gameplay
  //set up cards in *multi-dimensional array*
  // player input
  // highlight 2 cards clicked
    // if 2 cards clicked are on board
    // if 2 cards clicked are on board/in stack
    // if 2 cards clicked are in stack/in discard
  //if there's a blank space
  // if there's no cards in stock
  
  // scoring
    // if all in stack are same color +1 per same color
    // if in order +10
}
