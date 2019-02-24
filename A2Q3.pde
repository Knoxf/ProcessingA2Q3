/* 
 *Name: Zuhao Fang 
 * Assignment 2
 * Date: Feb 18 ani dshun
 */ 

float randomCounts;
float pointX=100;
float pointY=100;
int rectwidth=100;
int rectHigh=100;
int color1=#25C7F2;
int color2=#F5F5F5;
boolean colorChange;
boolean rectChange;
PFont f;

void setup(){
  size(500,500);
  f = createFont("Arial", 16, true);
  
  randomCounts = new float[5];
  int index = int(random(randomCounts.length));
  randomCounts[index]--;
  
}

void mousePressed(){
  rectChange=false;
  colorChange=false;
  
}

void mouseReleased(){
  rectChange=true;
  colorChange=false;
}

void draw(){
  background(#C9C7C7);
  
  if (mousePressed&&mouseX>pointX&&mouseX<pointX+rectwidth&&mouseY>pointY&&mouseY<pointY+rectHigh){
    fill(color1);
  }else fill(#FCFEFF);
  
  rect(pointX,pointY,rectwidth,rectHigh);
  fill(0);
  textFont(f,16);
  text('X',,pointX+rectwidth/2,pointY+rectHigh/2);
  
  if(rectChange){
    pointX = pointX + random(100);
  }
  
  println("c"+colorChange);
  println("r"+rectChange);
}
