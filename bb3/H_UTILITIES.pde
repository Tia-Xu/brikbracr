void mouseReleased() {
  if (mode==INTRO) {
    introClicks();
  } else if (mode==GAME) {
    gameClicks();
  } else if (mode==PAUSE) {
    pauseClicks();
  } else if (mode==GAMEOVER) {
    gameoverClicks();
}
}

void keyPressed() {
  
  if(keyCode==RIGHT) rightkey=true;
  if(keyCode==LEFT) leftkey=true; 
  
}

void keyReleased() {
  
   
     if(keyCode==RIGHT) rightkey=false;
  if(keyCode==LEFT) leftkey=false; 
}


void reset(){
   size(800, 600);
  mode = INTRO;
  //initialize paddles
  paddlex=width/2;
  paddley=height-10;
  //initialize ball
  ballx=width/2;
  bally=height-50;
  vballx=(5);
  vbally=(5);
  balld=20;
  //initialize keyboard
  leftkey=rightkey=false;
  imageMode(CENTER);
  textMode(CENTER);
  rectMode(CENTER);
  n=21;
  x=new int[n];
  y=new int[n];
  alive= new boolean [n];
  brickw=45;
  brickl=20;
  tempx=100;
  tempy=100;
  int i=0;
  while (i<n) {
    x[i]=tempx;
    y[i]=tempy;
    alive[i]=true;
    tempx=tempx+100;
    if (tempx==width) {
      tempx=100;
      tempy=tempy+100;
        }
    i=i+1;
     score=0;
  lives=3;
  }
   minim=new Minim(this);
  theme=minim.loadFile("mario bros theme.mp3");
}
