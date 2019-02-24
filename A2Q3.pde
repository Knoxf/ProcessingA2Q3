/* 
 *Name: Zuhao Fang 
 * Assignment 2
 * Date: Feb 18 ani dshun
 */ 

float randomCounts;
float pointX=random(50,450);
float pointY=random(50,450);
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
}

void mousePressed(){
  if(mousePressed&&mouseX>pointX&&mouseX<pointX+rectwidth&&mouseY>pointY&&mouseY<pointY+rectHigh){  
    colorChange=true;
    //rectChange=true;
  }

}

void mouseReleased(){
  if(mouseX>pointX&&mouseX<pointX+rectwidth&&mouseY>pointY&&mouseY<pointY+rectHigh){
  colorChange=false;
  rectChange=true;
  }
  
}

void draw(){
  background(#C9C7C7);
  
  if (colorChange){
    fill(color1);
  }else fill(#FCFEFF);
  
  rect(pointX,pointY,rectwidth,rectHigh);
  fill(0);
  textFont(f,16);
  text('5',pointX+rectwidth/2,pointY+rectHigh/2);
  
  if(rectChange){
    pointX = random(50,400);
    pointY = random(50,400);
    text('4',pointX+rectwidth/2,pointY+rectHigh/2);
    rectChange=false;
    colorChange=false;
   }
  
  println("c"+colorChange);
  println("r"+rectChange);
}
