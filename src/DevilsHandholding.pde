import java.io.*;
import java.util.*;
Stack<Card> deck = new Stack<Card>();
boolean menu = true;
Card[] arr = {
  new Card(0,13,false, true, 210,200,230,260,"K"),
  new Card(0,12,false, true, 220,200,230,260,"Q"),
  new Card(0,11,false, true, 230,200,230,260,"J"),
  new Card(0,10,false, true, 240,200,230,260,"10"),
  new Card(0,9,false, true, 250,200,230,260,"9"),
  new Card(0,8,false, true, 260,200,230,260,"8"),
  new Card(0,7,false, true, 270,200,230,260,"7"),
  new Card(0,6,false, true, 280,200,230,260,"6"),
  new Card(0,5,false, true, 290,200,230,260,"5"),
  new Card(0,4,false, true, 300,200,230,260,"4"),
  new Card(0,3,false, true, 310,200,230,260,"3"),
  new Card(0,2,false, true, 320,200,230,260,"2"),
  new Card(1,13,true, true, 330,200,230,260,"K"),
  new Card(1,12,true, true, 340,200,230,260,"Q"),
  new Card(1,11,true, true, 350,200,230,260,"J"),
  new Card(1,10,true, true, 360,200,230,260,"10"),
  new Card(1,9,true, true, 370,200,230,260,"9"),
  new Card(1,8,true, true, 380,200,230,260,"8"),
  new Card(1,7,true, true, 390,200,230,260,"7"),
  new Card(1,6,true, true, 400,200,230,260,"6"),
  new Card(1,5,true, true, 410,200,230,260,"5"),
  new Card(1,4,true, true, 420,200,230,260,"4"),
  new Card(1,3,true, true, 430,200,230,260,"3"),
  new Card(1,2,true, true, 440,200,230,260,"2"),
  new Card(2,13,false, true, 450,200,230,260,"K"),
  new Card(2,12,false, true, 460,200,230,260,"Q"),
  new Card(2,11,false, true, 470,200,230,260,"J"),
  new Card(2,10,false, true, 480,200,230,260,"10"),
  new Card(2,9,false, true, 490,200,230,260,"9"),
  new Card(2,8,false, true, 500,200,230,260,"8"),
  new Card(2,7,false, true, 510,200,230,260,"7"),
  new Card(2,6,false, true, 520,200,230,260,"6"),
  new Card(2,5,false, true, 530,200,230,260,"5"),
  new Card(2,4,false, true, 540,200,230,260,"4"),
  new Card(2,3,false, true, 560,200,230,260,"3"),
  new Card(2,2,false, true, 570,200,230,260,"2"),
  new Card(3,13,true, true, 580,200,230,260,"K"),
  new Card(3,12,true, true, 590,200,230,260,"Q"),
  new Card(3,11,true, true, 600,200,230,260,"J"),
  new Card(3,10,true, true, 610,200,230,260,"10"),
  new Card(3,9,true, true, 620,200,230,260,"9"),
  new Card(3,8,true, true, 630,200,230,260,"8"),
  new Card(3,7,true, true, 640,200,230,260,"7"),
  new Card(3,6,true, true, 650,200,230,260,"6"),
  new Card(3,5,true, true, 660,200,230,260,"5"),
  new Card(3,4,true, true, 670,200,230,260,"4"),
  new Card(3,3,true, true, 680,200,230,260,"3"),
  new Card(3,2,true, true, 690,200,230,260,"2")};

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
    background(75, 120, 150);
    text("MAIN MENU", 650,480);
    for (int i = 0; i<arr.length; i++){
      arr[i].display();
    }
  }
  
  
}

void mouseClicked() {
  if (menu && mouseX<370 && mouseX>330 && mouseY<310 && mouseY>290) {
    menu = false;
    for (int i = 0; i<arr.length; i++){
      deck.push(arr[i]);
    }
    System.out.println(deck.size());
    Collections.shuffle(deck);
  } else if(!menu && mouseX<690 && mouseX>610 && mouseY<490 && mouseY>470) {
    menu = true;
  }
}

void gameplay() {
  
  
  
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
