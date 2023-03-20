import java.io.*;
import java.util.*;
Stack<Card> deck = new Stack<Card>();
boolean menu = true;
boolean gone = false;
boolean boo = false;
Card top,dcard, mcard;
int o,n, something;
int b = -1;
ArrayList<Card> pull = new ArrayList<Card>();
int [][] place = {{150,100,190,160},{220,100,260,160},{290,100,330,160},{360,100,400,160},
      {150,220,190,280},{220,220,260,280},{290,220,330,280},{360,220,400,280},
      {150,340,190,400},{220,340,260,400},{290,340,330,400},{360,340,400,400}};
ArrayList<ArrayList<Card>> grid = new ArrayList<ArrayList<Card>>();
Card hold = new Card(0,0,false, true, place[0][0],place[0][1],place[0][2],place[0][3],"H", false, false);

Card[] arr = {
  new Card(0,13,false, true, 100,200,140,260,"K", true, false),
  new Card(0,12,false, true, 220,200,260,260,"Q", true, false),
  new Card(0,11,false, true, 230,200,270,260,"J", true, false),
  new Card(0,10,false, true, 240,200,280,260,"10", true, false),
  new Card(0,9,false, true, 250,200,290,260,"9", true, false),
  new Card(0,8,false, true, 260,200,300,260,"8", true, false),
  new Card(0,7,false, true, 270,200,310,260,"7", true, false),
  new Card(0,6,false, true, 280,200,320,260,"6", true, false),
  new Card(0,5,false, true, 290,200,330,260,"5", true, false),
  new Card(0,4,false, true, 300,200,340,260,"4", true, false),
  new Card(0,3,false, true, 310,200,350,260,"3", true, false),
  new Card(0,2,false, true, 320,200,360,260,"2", true, false),
  new Card(1,13,true, true, 330,200,370,260,"K", true, false),
  new Card(1,12,true, true, 340,200,380,260,"Q", true, false),
  new Card(1,11,true, true, 350,200,390,260,"J", true, false),
  new Card(1,10,true, true, 360,200,400,260,"10", true, false),
  new Card(1,9,true, true, 370,200,410,260,"9", true, false),
  new Card(1,8,true, true, 380,200,420,260,"8", true, false),
  new Card(1,7,true, true, 390,200,430,260,"7", true, false),
  new Card(1,6,true, true, 400,200,440,260,"6", true, false),
  new Card(1,5,true, true, 410,200,450,260,"5", true, false),
  new Card(1,4,true, true, 420,200,460,260,"4", true, false),
  new Card(1,3,true, true, 430,200,470,260,"3", true, false),
  new Card(1,2,true, true, 440,200,480,260,"2", true, false),
  new Card(2,13,false, true, 450,200,490,260,"K", true, false),
  new Card(2,12,false, true, 460,200,500,260,"Q", true, false),
  new Card(2,11,false, true, 470,200,510,260,"J", true, false),
  new Card(2,10,false, true, 480,200,520,260,"10", true, false),
  new Card(2,9,false, true, 490,200,530,260,"9", true, false),
  new Card(2,8,false, true, 500,200,540,260,"8", true, false),
  new Card(2,7,false, true, 510,200,550,260,"7", true, false),
  new Card(2,6,false, true, 520,200,560,260,"6", true, false),
  new Card(2,5,false, true, 530,200,570,260,"5", true, false),
  new Card(2,4,false, true, 540,200,580,260,"4", true, false),
  new Card(2,3,false, true, 560,200,600,260,"3", true, false),
  new Card(2,2,false, true, 570,200,610,260,"2", true, false),
  new Card(3,13,true, true, 580,200,620,260,"K", true, false),
  new Card(3,12,true, true, 590,200,630,260,"Q", true, false),
  new Card(3,11,true, true, 600,200,640,260,"J", true, false),
  new Card(3,10,true, true, 610,200,650,260,"10", true, false),
  new Card(3,9,true, true, 620,200,660,260,"9", true, false),
  new Card(3,8,true, true, 630,200,670,260,"8", true, false),
  new Card(3,7,true, true, 640,200,680,260,"7", true, false),
  new Card(3,6,true, true, 650,200,690,260,"6", true, false),
  new Card(3,5,true, true, 660,200,700,260,"5", true, false),
  new Card(3,4,true, true, 670,200,710,260,"4", true, false),
  new Card(3,3,true, true, 680,200,720,260,"3", true, false),
  new Card(3,2,true, true, 690,200,730,260,"2", true, false)};

void setup(){
  size(700,500);
}

void draw(){
  if (menu) {
    for (Card i: arr){
      i.click = false;
    }
    background(0);
    textSize(40);
    fill(255);
    textAlign(CENTER,CENTER);
    text("Devil's Handholding",350, 150);
    textSize(15);
    text("Card Game | Alice Leppert | 2023", 350,475);
    text("NEW GAME", 350,300);
  } else {
    background(157, 190, 183, 1);
    textSize(20);
    text("Score: "+ score(),250,20);
    text("MAIN MENU", 250,450);
    fill(0);
    rect(27,223,40,60,5);
    fill(255);
    rect(450,20,230,460,5);
    fill(0);
    textSize(12);
    textAlign(LEFT);
    text("Instructions:", 455, 45);
    text("1. There are 12 stacks on the board \n and 1 deck to take cards from.", 455,60);
    text("2. Cards can be moved from the \n deck  to a stack and from one \n stack to another.",455,95);
    text("3. The aim of the game is to move \n the  cards into a specific order:",455,150);
    text("\t i. In row 1, the cards in all stacks \n have to be ordered as (2,5,8,J).",460,185);
    text("\t ii. In row 2, the cards in all stacks \n have to be ordered as (3,6,9,Q).",460,220);
    text("\t iii. In row 3, the cards in all stacks \n have to be ordered as (4,7,10,K).",460,255);
    text("\t iv. Try to have all cards in a stack \n be of the same suit.",460,290);
    text("4. More points will be rewarded for \n a more perfect \n grid.", 455,330);
    text("5. Click the card you want to move \n first and then click the destination.", 455,390);
    text("6. Cards can't be removed from the \n grid once added.",455, 430);
    for (Card i: arr){
      i.display();
    }
  }
  if(score() == 1800){
    textSize(20);
    text("YOU WIN!", 220, 250);
  }
}

void mouseClicked() {
  if (menu && mouseX>260 && mouseX>330 && mouseY<310 && mouseY>290) {
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
    
    
  } else if(!menu && mouseX<290 && mouseX>210 && mouseY<470 && mouseY>430) {
    menu = true;
    deck.clear();
    grid.clear();
  } else if(!menu && mouseX>20 && mouseX<70 && mouseY<280 && mouseY>220) {
    if(boo == true){
      mcard.dis = false;
      pull.add(mcard);
      mcard = null;
      boo = false;
    }
    if (top != null) {
       top.dis = false;
    }
    if(deck.size() == 0){
      
      for(int i=pull.size()-1;i>=0;i--){
        deck.push(pull.get(i));
        pull.get(i).dis = true;
        pull.get(i).x1 = 30;
        pull.get(i).y1 = 220;
        pull.get(i).x2 = 70;
        pull.get(i).y2 = 280;
      }
      pull.clear();
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
  }
  
  //
  for (int i = 0; i<12;i++){
  if(mouseX>place[i][0] && mouseY>place[i][1] && mouseX<place[i][2] && mouseY<place[i][3]) {
    if(grid.get(i).size() == 0 ){
      fill(75, 120, 150);
      rect(place[i][0],place[i][1],place[i][2]-place[i][0],place[i][3]-place[i][1]);
    } else {
      grid.get(i).get(grid.get(i).size()-1).click = true;
    }
    if(mcard != null){
      if(grid.get(i).size() == 0 ){
        dcard = hold;
        something = i;
        dcard.x1 = place[i][0];
        dcard.y1 = place[i][1];
        dcard.x2 = place[i][2];
        dcard.y2 = place[i][3];
      } else{
      dcard = grid.get(i).get(grid.get(i).size()-1);
      }
    } else {
      if(grid.get(i).size() == 0){
        mcard = null;
      } else{
      mcard = grid.get(i).get(grid.get(i).size()-1);
      }
    }
  }
  }
  
  if(top != null && mouseX>top.x1 && mouseY>top.y1 && mouseX<top.x2 && mouseY<top.y2) {
      mcard = top;
      top = null;
      mcard.click = true;
      boo = true;
      pull.remove(pull.size()-1);
  }// can;t unselect top card
  
  if(dcard!=null && mcard!=null && dcard.equals(mcard)){
      mcard.click = false;
      dcard.click = false;
      mcard = null;
      dcard = null;
    }else if (dcard!=null && mcard!=null) {
    mcard.x1 = dcard.x1;
    mcard.x2 = dcard.x2;
    mcard.y1 = dcard.y1;
    mcard.y2 = dcard.y2;
    if(pull.size() >0){
      pull.get(pull.size()-1).dis = true;
      top = pull.get(pull.size()-1);
    }
    for(int i=0;i<12;i++){
      if (grid.get(i).indexOf(mcard)!= -1) {
      grid.get(i).remove(grid.get(i).indexOf(mcard));
      }
      if (grid.get(i).indexOf(dcard)!= -1) {
        o = i;
        n = grid.get(i).indexOf(dcard);
      } else if (dcard.equals( hold)){
        o = something;
        n = -1;
      }
      
    }
    grid.get(o).add(n+1,mcard);
    for(int i=0;i<12;i++){
    if(grid.get(i).size() != 0){
      for(Card j: grid.get(i)){
        j.dis = false;
      }
      grid.get(i).get(grid.get(i).size()-1).dis = true;
      }
    }
    mcard.click = false;
    dcard.click = false;
    mcard = null;
    dcard = null;
    boo = false;
  }
}

int score(){
  int points = 0;
  String [][] face = {{"2","6","10"},{"2","6","10"},{"2","6","10"},{"3","7","J"},{"3","7","J"},{"3","7","J"},
      {"4","8","Q"},{"4","8","Q"},{"4","8","Q"},{"5","9","K"},{"5","9","K"},{"5","9","K"}};
  for(ArrayList<Card> i: grid){
    for(Card j:i){
      points += j.pt;
      if (grid.get(grid.indexOf(i)).indexOf(j)<3){
      if (j.face.equals(face[grid.indexOf(i)][grid.get(grid.indexOf(i)).indexOf(j)])){
        points+= 10;
      }
    }
    } 
    if(grid.get(grid.indexOf(i)).size() == 4){
    if(grid.get(grid.indexOf(i)).get(0) == grid.get(grid.indexOf(i)).get(1) && grid.get(grid.indexOf(i)).get(0) == grid.get(grid.indexOf(i)).get(2) 
          && grid.get(grid.indexOf(i)).get(0) == grid.get(grid.indexOf(i)).get(3)){
      points+= 80;
    }
    }
  }
  
  return points;
}
