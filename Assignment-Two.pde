void setup() {
  size(1300,900); //set size of the window
}
  void draw() {
    background(#883CDB); //draw a purple background
    ellipseMode(CENTER);
    rectMode(CENTER);
    //draw football body
    fill(0);
    rect(250,440,150,200);
    //draw players head
    arc(250,250,120,120,0,12);
    //draw neck
    beginShape();
    vertex(200,350);
    vertex(250,300);
    vertex(260,300);
    vertex(300,350);
    endShape(CLOSE);
    //draw football
    ellipse(mouseX,mouseY,50,30);
    //draw legs
    rect(300,590,20,100);
    rect(200,590,20,100);
    //draw shoes
    beginShape();
    vertex(310,630);
    vertex(320,635);
    vertex(330,625);
    vertex(335,620);
    vertex(340,630);
    vertex(340,640);
    vertex(310,640);
    endShape(CLOSE);
    beginShape();
    vertex(210,630);
    vertex(220,635);
    vertex(230,625);
    vertex(235,620);
    vertex(240,630);
    vertex(240,640);
    vertex(210,640);
    endShape(CLOSE);
    //draw butt
    arc(175,500,80,80,0,12);
    //draw arms
    beginShape();
    vertex(325,400);
    vertex(375,450);
    vertex(425,400);
    vertex(435,400);
    vertex(375,460);
    vertex(325,410);
    endShape(CLOSE);
    beginShape();
    vertex(325,425);
    vertex(375,475);
    vertex(425,425);
    vertex(435,425);
    vertex(375,485);
    vertex(325,435);
    endShape(CLOSE);
    //draw hands
    triangle(430,430,420,420,440,420);
    triangle(430,400,420,390,440,390);
    //draw football mask
    beginShape();
    vertex(310,250);
    vertex(350,250);
    vertex(340,290);
    vertex(330,300);
    vertex(285,300);
    fill(#883CDB);
    stroke(0);
    endShape(CLOSE);
    //draw mask guard
    line(320,250,300,300);
    line(340,250,320,300);
    line(300,265,345,265);
    line(290,280,343,280);
    //draw football lace
    ellipse(mouseX,mouseY,30,5);
    //draw field width markers
    point(500,250);
    point(1000,500);
}
