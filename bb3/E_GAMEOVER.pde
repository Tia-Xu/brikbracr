void gameover() {
 background(0);
  stroke(#E63946);
  fill(#E63946);
   if (lives>0){
     text("you win",300,300);
   }else{
     text("take the L",300,300);
   }
   if (score==21){
     text("you win",300,300);}
     
  text("PLAY AGAIN:", 100, 500);
  text("PRESS ANYWHERE TO RESPAWN", 100, 550);
  textSize(20);
  text("EXIT", 600, 50);
}
  
void gameoverClicks()  {
  
  if (mouseX>550 && mouseX<650 && mouseY>25 && mouseY<75) {
    exit();
  } else {
    mode=INTRO;
  reset();}
}
