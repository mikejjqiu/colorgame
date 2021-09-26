void grandom() {
  float cc = random(0, 2);
  if (cc<1) {
    c = int(random(0, 8));
    w = c;
  } else {
    c = int(random(0, 8));
    w = int(random(0, 8));
    while (w==c) w = int(random(0, 8)); //1 + the last page number
  }
}

void countdown() {
  time--;
  rectMode(CENTER);
  fill(0,255,0);
  rect(width/2, height/2+100, 200, 20);
  fill(255,0,0);
  rect(width/2, height/2+100, 200-time, 20);
  if (time == 0) mode = gameover;
}

void high_score() {
  if (score>highscore) highscore = score;
}

void reset() {
  score = 0;
  time = 200;
  grandom();
}
