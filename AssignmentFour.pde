int pressed=0;
int pressedState=0;

void setup() {
  size(1300,810);//set size of window
}
 
 void draw() {
   background(#B4B78C);//draw tan kitchen
   fill(#77D7DB);//color shirt
   rect(750,400,300,500);//person's body
   fill(#F2E4C1);//color face 
   arc(900,300,250,250,0,12);//person's head
   triangle(900,300,850,330,900,330);//draw nose
      line(750,550,500,300);//draw arm
         fill(#FF4047);//color kerosene box
   beginShape();//kerosene box
   vertex(330,350);
   vertex(480,400);
   vertex(550,150);
   vertex(400,100);
   endShape(CLOSE);
   line(775,500,400,300);//draw arm
   fill(255);//color eye whites
   ellipse(860,275,50,20);//draw eyes
   ellipse(950,275,50,20);
   fill(0);//color inside mouth
   beginShape();//mouth
   vertex(840,350);
   vertex(890,355);
   vertex(940,350);
   vertex(935,365);
   vertex(840,370);
   vertex(860,360);
   endShape(CLOSE);
   fill(#30E39A);//color eyes 
   arc(860,275,20,20,0,12);//draw eyes
   arc(950,275,20,20,0,12);
   fill(#EFFF40);//fill kerosene label
   beginShape();//draw kerosene label
   vertex(360,250);
   vertex(508,300);
   vertex(522,250);
   vertex(373,200);
   endShape();
              beginShape();
   vertex(312,475);
   vertex(340,650);
   vertex(452,650);
   vertex(485,475);
   endShape();
   textSize(25);//draw Kerosene
   fill(0);
   text("KEROSENE",375,260);
   fill(#B4B78C);
   arc(400,475,175,75,0,12);//draw blender
   textSize(25);
   fill(0);
   text("Kerosene is fuel. Red Bull is fuel. Kerosene is Red Bull",25,50);
 }
 void mousePressed() {
   pressed=pressed+1;
   pressedState=(pressed%2);
      if(pressedState==1){
     background(#F2241D);
   } else {
     background(#EFFF40);
   }
 }
 
