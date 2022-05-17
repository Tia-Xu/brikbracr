void pause() {
 
  strokeWeight(5);
  fill(#E63946);
 stroke(0);
  rect(750,50,50,50);
  line(758,35,758,65);
  line(740,35,740,65);
  triangle(365,250,365,350,450,300);
}
void pauseClicks()  {
if (dist(mouseX, mouseY, 750,50 )<50){
   mode=GAME;
}
    
}
