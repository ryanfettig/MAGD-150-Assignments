void setup() {
  size (1300,850); //set size of window
}
  void draw() {
    background(#0B8B8A); //draw a blue-green background
    rectMode(CENTER); //set rectangle mode
    //draw projector body
    rect(625,475,300,250);
    rect(600,500,300,250);
   //draw projector tip
   triangle(725,450,800,375,800,525);
    //draw film wheels
    arc(558,250,150,150,0,12);
   arc(538,250,150,150,0,12);
   arc(370,350,150,150,0,12);
   arc(350,350,150,150,0,12);
   //draw wheel holes
   arc(525,225,35,35,0,12);
   arc(560,250,35,35,0,12);
   arc(500,260,35,35,0,12);
   arc(535,280,35,35,0,12);
   arc(370,325,35,35,0,12);
   arc(325,315,35,35,0,12);
   arc(330,360,35,35,0,12);
   arc(375,375,35,35,0,12);
   //draw connector to wheel
   triangle (525,368,550,368,538,250);
   //draw projection
   ellipseMode(CENTER);
   ellipse(835,450,25,175);
   ellipse(840,450,15,125);
   //draw film connector
  beginShape();
  vertex(500,500);
  vertex(500,450);
  vertex(550,450);
  vertex(600,600);
  vertex(530,600);
  endShape(CLOSE);
  beginShape();
  vertex(510,500);
  vertex(510,480);
  vertex(530,470);
  vertex(550,470);
  vertex(560,490);
  vertex(550,520);
  endShape(CLOSE);
  beginShape();
  vertex(325,315);
  vertex(320,330);
  vertex(500,500);
  vertex(510,480);
  endShape(CLOSE);
  //draw projector piece
  beginShape();
  vertex(600,500);
  vertex(630,480);
  vertex(660,500);
  vertex(630,520);
  endShape(CLOSE);
  //draw film
  line(625,370,613,250);
  line(480,200,375,275);
  line(550,490,350,425);
  //projection track
  point(820,450);
  point(815,450);
  //moving eye ball
  arc(mouseX,mouseY,150,150,0,12);
  ellipse(mouseX,mouseY,75,120);
  ellipse(mouseX,mouseY,50,50);
  }
  //projector color change
  void mousePressed() {
    fill(#EFF074);
    //background color change
  }
  void keyPressed(){
    background(#F074EA);
  }
