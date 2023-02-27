Card kspades = new Card(0,13,false, true, 200,210,200,230);
  Button play = new Button(350, 300, 280, 140, 240, 200, "Play", #FCF000, #FCF670, true, false);

void setup(){
  size(700,500);
  
}

void draw(){
  background(0);
  textSize(40);
  textAlign(CENTER);
  text("Devil's Handholding",350, 150);
  textSize(15);
  text("Card Game | Alice Leppert | 2023", 350,475);
  text("PLAY", 350,300);
  play.display();
  play.hover();
  kspades.display();
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
