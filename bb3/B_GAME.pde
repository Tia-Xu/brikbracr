void game() {

  background(0);
  stroke(#E63946);
  strokeWeight(5);
  fill(#E63946);
  //paddle
  rect(paddlex, paddley, 100, 10);
  
   textSize(20);
    stroke(#E63946);
  strokeWeight(5);
  fill(#E63946);
  text("lives",600,550);
  text(lives,750,550);

  //score
   stroke(#E63946);
  strokeWeight(5);
  fill(#E63946);
  textSize(20);
  text("score",50,550);
  text(score,150,550);
  //pause
   stroke(#E63946);
  strokeWeight(5);
  fill(#E63946);
  stroke(0);
  rect(750, 50, 50, 50);
  triangle(740, 35, 740, 65, 765, 48);
  

  //key
  if (leftkey==true) 
    if (paddlex>50)  paddlex=paddlex-5;
  if (rightkey==true) 
    if (paddlex<750)  paddlex=paddlex+5;

  //ball
  stroke(#E63946);
  strokeWeight(5);
  fill(#E63946);
  ellipse(ballx, bally, balld, balld);
  bally=bally+vbally;
  ballx=ballx+vballx;
  // bounce off of verticals
 
  if (ballx< 10 || ballx> width-10) {
    vballx *= -1;
  }
  if ( bally<10) {
    vbally*= -1;
  }
  
  
   //lives
  if(bally==height+50){
   lives=lives-1;
   ballx=width/2;
   bally=height-50;
   paddlex=width/2;
   
   }
   if (lives==0) {
  mode=GAMEOVER;
   }
   if (score==21){
     mode=GAMEOVER;
}

   

  //bricks

 stroke(#FA1C2E);
 fill(#FA1C2E);
  int i=0;
  while (i<n) {
    if (alive[i]==true) {
     
      if (y[i]==100){
     
        stroke(#FA1C2E);
        fill(#FA1C2E);
      }if (y[i]==200){

        stroke(#11BC12);
        fill(#11BC12);
      }if (y[i]==300){
     
        stroke(#1168BC);
        fill(#1168BC);
        
      } 
      rect(x[i], y[i], brickw, brickl);
      
      intersexy(i);
      intersexe(i);
    }
    i=i+1;
  }
  if (score==21) {
    mode=GAMEOVER;
  }

  intersex();
  
  
}
boolean intersex() {
  float p1=paddlex-50;
  float p2=paddlex+50;
  if (ballx+10 >= p1 && ballx-10 <= p2 && bally+10>=590 &&bally-10<=600) {
    vballx=map(ballx-(paddlex-50), 0, 100, -5, 5);
    vbally*= -1;
    ballx=ballx+vballx;
    bally=bally+vbally;
    return true;
  } else {
    return false;
  }
}
boolean intersexy(int i) {

  float b1=x[i]-22.5;
  float b2=x[i]+22.5;
  if (ballx+10>= b1&& ballx-10 <=b2 && bally+10>=y[i]-10 && bally-10<=y[i]+10) {     
    ballx=ballx+vballx;
    vballx*= -1;
    alive[i]=false;
    score=score+1;
    return true;
  } else {
    return false;
  }
}
void intersexe(int i) {
  float b1=x[i]-22.5;
  float b2=x[i]+22.5;
  if (ballx+10>= b1&& ballx-10 <=b2 && bally+10>=y[i]-10 && bally-10<=y[i]+10) {     
    vballx*= -1;
    ballx=ballx+vballx;
    vbally*= -1;
    bally=bally+vbally;
    alive[i]=false;
  }
}

 

void ball(){
  stroke(#E63946);
  strokeWeight(5);
  fill(#E63946);
  ellipse(ballx, bally, balld, balld);
  bally=bally+vbally;
  ballx=ballx+vballx;
  // bounce off of verticals
 
  if (ballx< 10 || ballx> width-10) {
    vballx *= -1;
  }
  if ( bally<10) {
    vbally*= -1;
  }
}

void gameClicks() {
  if (dist(mouseX, mouseY, 750, 50 )<50) {
    mode=PAUSE;
  }
}

