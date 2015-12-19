Timer timer;
Timer timer2;
float rectA = random(600);
float rectB = random(600);
float circX = 225;
float circY = 300;
PImage img;


void setup(){
  size(600,600);
  timer = new Timer(10000);
  timer2 = new Timer(5000);
  timer.start();
  timer2.start();
  loadImages();
  drawImages();
}

void draw(){
  if(timer2.isFinished()){
    background(255);
  }
  if (timer.isFinished()){
    drawEnemy();
  }
  drawCircle();
  moveCircle();
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

void drawEnemy(){
  stroke(255,0,0);
  fill(255,0,0);
  rectMode(CENTER);
  rect(rectA,rectB,25,25);
}

void drawCircle(){
  noStroke();
  fill(0);
  ellipse(circX,circY,50,50);
}

void moveCircle(){
  //Move UP
  if(keyPressed){
    if(key == 'w' || key == 'W'){
      circY=circY-2;
    }
  }
  
  //Move Down
  if(keyPressed){
    if(key == 's' || key == 'S'){
      circY=circY+2;
    }
  }
    
  //Move Right
  if(keyPressed){
    if(key == 'a' || key == 'A'){
      circX=circX-2;
    }
  }
  //Move Left
  if(keyPressed){
    if(key == 'd' || key == 'D'){
      circX=circX+2;
    }
  }
}

void loadImages(){
  img = loadImage("arcade.jpg");
}

void drawImages(){
  image(img,0,0,600,600);
}
