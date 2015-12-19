//set timer numbers
Timer timer;
Timer timer2;
Timer timer3;
Timer timer4;
Timer timer5;
Timer timer6;
//set 3 images
PImage img;
PImage img2;
PImage img3;
//x and y positions
int[] xpos = new int[50];
int[] ypos = new int[50];
//set collision intersectors
PVector UL;
PVector UR;
//setup general background
void setup(){
  size(800,600);
  background(175);
  //setup FootBalls
  myFootBalls = new FootBalls();
  //set timer times
  timer = new Timer (5000);
  timer2 = new Timer (10000);
  timer3 = new Timer (15000);
  timer4 = new Timer (20000);
  timer5 = new Timer (25000);
  timer6 = new Timer (30000);
  //declare timer start
  timer.start();
  timer2.start();
  timer3.start();
  timer4.start();
  timer5.start();
  timer6.start();
  //load images and allow them to be independently drawn
  loadImages();
  drawImages();
  //setup collision points
  UL = new PVector (20,30);
  UR = new PVector (70,100);
  rect(UL.x,UL.y,UR.x,UR.y);
  point(mouseX, mouseY);
  
  //Initialize 
  for (int i = 0; i < xpos.length; i++){
    xpos[i] = 0;
    ypos[i] = 0;
  }
}

void draw(){
  //draw mini football
  ellipse(20,30,50,70);
  line(20,30,70,30);
  point(45,30);
  //draw FootBalls
  myFootBalls.move();
  myFootBalls.display();
  //collision req
  if(mouseX>20&&mouseX<70&&mouseY>30&&mouseY<100);
  //declare timers
  if(timer.isFinished()){
    image(img2,125,75,100,100);
  }
  if(timer2.isFinished()){
    image(img2,400,75,100,100);
  }
  if(timer3.isFinished()){
    image(img2,690,75,100,100);
  }
  if(timer4.isFinished()){
    image(img2,115,420,100,100);
  }
  if(timer5.isFinished()){
    image(img2,400,420,100,100);
  }
  if(timer6.isFinished()){
    image(img2,690,420,100,100);
  }
  //state change
  if (mousePressed) {
    stroke(255);
  } else {
    stroke(0);
  }
  line(mouseX-66, mouseY, mouseX+66, mouseY);
  line(mouseX, mouseY-66, mouseX, mouseY+66); 
}
//state change
if (keyPressed) {
    stroke(134);
  } else {
    stroke(12);
  }
  
  //Shift array values
  for (int i = 0; i < xpos.length-1; i++){
    xpos[i] = xpos[i+1];
    ypos[i] = ypos[i+1];
  }
  
  //New loaction
  xpos[xpos.length-1] = mouseX;
  ypos[ypos.length-1] = mouseY;
  
  //Draw everything
  for (int i = 0; i < xpos.length; i++){
    noStroke();
    Img3(xpos[i],ypos[i],i,i);
  }
}
//create timer class
class Timer{
  int savedTime;
  int totalTime;
  
  Timer (int tempTotalTime){
    totalTime = tempTotalTime;
  }
  
  //Starting the Timer
  void start(){
    savedTime = millis();
  }
  
  boolean isFinished(){
    //Check how much time has passed
    int passedTime = millis() - savedTime;
    if (passedTime > totalTime){
      return true;
    }else{
      return false;
    }
  }
}
//load image urls
void loadImages(){
  img = loadImage("packers.jpg");
  img2 = loadImage("bears.jpg");
  img3 = loadImage("football.jpg.gif");
}
//draw images
void drawImages(){
  image(img,0,0,800,600);
}

class FootBalls{
  int centerX, centerY, offset1, offset2;
  
  FootBalls(){
    centerX=round(random(0,width));
  centerY=round(random(0,height));
  offset1=15;
  offset2=15;
  println(centerX +centerY);
  }
  void display(){
    ellipseMode(CENTER);
    fill(#A0720F);
    ellipse(centerX, centerY, 50,30);
    fill(#A0720F);
    ellipse(centerX+offset1,centerY+offset2,30,20);
    ellipse(centerX-offset2,centerY-offset2,30,20);
  }
  void move(){
    //int stepsize=5;
    centerX=round(random(-5,5)) + centerX;
    centerY=round(random(-5,5)) + centerY;
  }
}
