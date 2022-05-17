

import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;

int mode;
final int INTRO=1;
final int PAUSE = 2;
final int GAME=3;
final int GAMEOVER = 4;
final int SETTINGS=5;
Minim minim;
AudioPlayer theme;


//ball
float ballx, bally, balld; 
float vballx, vbally;

//paddle
float paddlex, paddley;

//keyboard
boolean rightkey, leftkey;

//brick
int[]x;
int[]y;
int brickw;
int brickl;
int n;
int tempx, tempy;
boolean [] alive;
int score;
int lives;


void setup() {
  size(800, 600);
  mode = INTRO;
  //initialize paddles
  paddlex=width/2;
  paddley=height-10;
  //initialize ball
  ballx=width/2;
  bally=height-50;
  vballx=(3);
  vbally=(3);
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
  }
   minim=new Minim(this);
  theme=minim.loadFile("mario bros theme.mp3");
  score=0;
  lives=3;
}
 
void draw() {

  if (mode==INTRO) {
    intro();
  } else if (mode==GAME) {
    game();
  } else if (mode==PAUSE) {
    pause();
  } else if (mode==GAMEOVER) {
    gameover();
  } else {
    println("Error: Mode = "+mode);
  }
}
