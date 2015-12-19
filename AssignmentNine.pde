Timer timer;
Timer timer2;
Timer timer3;
Timer timer4;
Timer timer5;
Timer timer6;
PImage img;
PImage img2;
//x and y positions
int[] xpos = new int[50];
int[] ypos = new int[50];

void setup(){
  size(900,600);
  smooth();
  background(255);
  timer = new Timer (5000);
  timer2 = new Timer (10000);
  timer3 = new Timer (15000);
  timer4 = new Timer (20000);
  timer5 = new Timer (25000);
  timer6 = new Timer (30000);
  timer.start();
  timer2.start();
  timer3.start();
  timer4.start();
  timer5.start();
  timer6.start();
  loadImages();
  drawImages();
  
  //Initialize 
  for (int i = 0; i < xpos.length; i++){
    xpos[i] = 0;
    ypos[i] = 0;
  }
}

void draw(){
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
    fill(255-i*5);
    ellipse(xpos[i],ypos[i],i,i);
  }
}

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

void loadImages(){
  img = loadImage("table.jpg");
  img2 = loadImage("turkey.jpg");
}

void drawImages(){
  image(img,0,0,900,600);
}
