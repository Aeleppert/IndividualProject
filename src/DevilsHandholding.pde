import java.io.*;
import java.util.*;
Stack<Card> deck = new Stack<Card>();
boolean menu = true;
Card top;
ArrayList<Card> pull = new ArrayList<Card>();
int [][] place = {{150,100,190,160},{220,100,260,160},{290,100,330,160},{360,100,400,160},
      {150,220,190,280},{220,220,260,280},{290,220,330,280},{360,220,400,280},
      {150,340,190,400},{220,340,260,400},{290,340,330,400},{360,340,400,400}};
ArrayList<ArrayList<Card>> grid = new ArrayList<ArrayList<Card>>();
Card[] arr = {
  new Card(0,13,false, true, 100,200,140,260,"K"),
  new Card(0,12,false, true, 220,200,260,260,"Q"),
  new Card(0,11,false, true, 230,200,270,260,"J"),
  new Card(0,10,false, true, 240,200,280,260,"10"),
  new Card(0,9,false, true, 250,200,290,260,"9"),
  new Card(0,8,false, true, 260,200,300,260,"8"),
  new Card(0,7,false, true, 270,200,310,260,"7"),
  new Card(0,6,false, true, 280,200,320,260,"6"),
  new Card(0,5,false, true, 290,200,330,260,"5"),
  new Card(0,4,false, true, 300,200,340,260,"4"),
  new Card(0,3,false, true, 310,200,350,260,"3"),
  new Card(0,2,false, true, 320,200,360,260,"2"),
  new Card(1,13,true, true, 330,200,370,260,"K"),
  new Card(1,12,true, true, 340,200,380,260,"Q"),
  new Card(1,11,true, true, 350,200,390,260,"J"),
  new Card(1,10,true, true, 360,200,400,260,"10"),
  new Card(1,9,true, true, 370,200,410,260,"9"),
  new Card(1,8,true, true, 380,200,420,260,"8"),
  new Card(1,7,true, true, 390,200,430,260,"7"),
  new Card(1,6,true, true, 400,200,440,260,"6"),
  new Card(1,5,true, true, 410,200,450,260,"5"),
  new Card(1,4,true, true, 420,200,460,260,"4"),
  new Card(1,3,true, true, 430,200,470,260,"3"),
  new Card(1,2,true, true, 440,200,480,260,"2"),
  new Card(2,13,false, true, 450,200,490,260,"K"),
  new Card(2,12,false, true, 460,200,500,260,"Q"),
  new Card(2,11,false, true, 470,200,510,260,"J"),
  new Card(2,10,false, true, 480,200,520,260,"10"),
  new Card(2,9,false, true, 490,200,530,260,"9"),
  new Card(2,8,false, true, 500,200,540,260,"8"),
  new Card(2,7,false, true, 510,200,550,260,"7"),
  new Card(2,6,false, true, 520,200,560,260,"6"),
  new Card(2,5,false, true, 530,200,570,260,"5"),
  new Card(2,4,false, true, 540,200,580,260,"4"),
  new Card(2,3,false, true, 560,200,600,260,"3"),
  new Card(2,2,false, true, 570,200,610,260,"2"),
  new Card(3,13,true, true, 580,200,620,260,"K"),
  new Card(3,12,true, true, 590,200,630,260,"Q"),
  new Card(3,11,true, true, 600,200,640,260,"J"),
  new Card(3,10,true, true, 610,200,650,260,"10"),
  new Card(3,9,true, true, 620,200,660,260,"9"),
  new Card(3,8,true, true, 630,200,670,260,"8"),
  new Card(3,7,true, true, 640,200,680,260,"7"),
  new Card(3,6,true, true, 650,200,690,260,"6"),
  new Card(3,5,true, true, 660,200,700,260,"5"),
  new Card(3,4,true, true, 670,200,710,260,"4"),
  new Card(3,3,true, true, 680,200,720,260,"3"),
  new Card(3,2,true, true, 690,200,730,260,"2")};

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
    textSize(15);
    text("MAIN MENU", 650,480);
    fill(0);
    rect(27,223,40,60,5);
    for (int i = 0; i<arr.length; i++){
      arr[i].display();
    }
  }
  
  
}

void mouseClicked() {
  if (menu && mouseX<370 && mouseX>330 && mouseY<310 && mouseY>290) {
    menu = false;
    List<Card> list = Arrays.asList(arr);
    Collections.shuffle(list);
    list.toArray(arr);
    for (Card i: arr){
      i.x1 = 30;
      i.y1 = 220;
      i.x2 = 70;
      i.y2 = 280;
      deck.push(i);
    }
    for (int i = 0; i<12; i++){
      Card setup = deck.pop();
      setup.x1 = place[i][0];
      setup.y1 = place[i][1];
      setup.x2 = place[i][2];
      setup.y2 = place[i][3];
      grid.add(new ArrayList<Card>());
      grid.get(i).add(0,setup);
    }
    System.out.println(deck);
  } else if(!menu && mouseX<690 && mouseX>610 && mouseY<490 && mouseY>470) {
    menu = true;
    deck.clear();
    grid.clear();
  } else if(!menu && mouseX>30 && mouseX<70 && mouseY<280 && mouseY>220) {
    if (top != null) {
       top.display = false;
    }
    top = deck.pop();
    pull.add(top);
    top.y1 = 100;
    top.y2 = 160;
    top.x1 = 30;
    top.x2 = 70;
    top.click = false;
    for (Card c: arr) {
    c.click = false;
  }
  } System.out.println(pull);
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
