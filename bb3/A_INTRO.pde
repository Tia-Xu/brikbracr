PImage introbg;
PFont start;


void intro() {
   reset();
  theme.play();
  fill(255);
  strokeWeight(10);
  introbg=loadImage("intro.jpeg");
  image(introbg, 400, 300, 800, 600); 
  tactile(295, 445, 215, 65);
  rect(400, 475, 200, 50);
  start=createFont("Chopsic.otf", 40);
  fill(0);
  textSize(50);
  textFont(start);
  text("START",322,490);
}
void tactile(int x, int y, int a, int b) {
  if (mouseX<x+a && mouseX>x && mouseY<y+b && mouseY>y) {
    stroke(#E63946);
  } else {
    stroke(#1D3557);
  }
}

void introClicks() {
  if (mouseX>300 && mouseX<500 && mouseY>450 && mouseY<500) 
    mode=GAME;
}

