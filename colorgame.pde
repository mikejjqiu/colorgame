/*
the color game, mike, sept 16
 */

int mode;
final int intro = 0;
final int game = 1;
final int gameover = 2;

PFont ff;

String[] words;
color[] colors;
PImage[] gif;
int frames;

int i = 0;
int f = 0;
//=============
color red = #C91804;
color blue = #0408C9;
color yellow = #DEDA00;
color green = #02D800;
color orange = #FF9100;
color purple = #B600FF;
color cyan = #00CB90;
color grey = #B2B2B2;

int score = 0;
int highscore = score;

int time = 200;

//word and color 
int w;
int c;

PImage gobg;


void setup() {
  size(1000, 800);

  mode = intro;
  rectMode(CENTER);
  textAlign(CENTER, CENTER);

  ff = createFont("f2.ttf", 24);


  words = new String[8]; //starts from 0, so 8
  words[0] = "red";
  words[1] = "blue";
  words[2] = "yellow";
  words[3] = "green";
  words[4] = "orange";
  words[5] = "purple";
  words[6] = "cyan";
  words[7] = "grey";


  colors = new color[8];
  colors[0] = red; 
  colors[1] = blue;
  colors[2] = yellow;
  colors[3] = green;
  colors[4] = orange;
  colors[5] = purple;
  colors[6] = cyan;
  colors[7] = grey;

  frames = 99;
  gif = new PImage[frames];

  while (i<frames) {
    gif[i] = loadImage("frame_"+i+"_delay-0.04s.gif");
    i++;
  }
  
  gobg = loadImage("i1.jpeg");
}

void draw() {

  if (mode==intro) {
    intro();
  } else if (mode==game) {
    game();
  } else if (mode==gameover) {
    gameover();
  } else {
    println("Error" + mode);
  }
}
