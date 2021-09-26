void intro() {

  image(gif[f], 0, 0, width, height);
  f++;
  if (f==frames) f=0;

  fill(0);
  smooth();
  stroke(#999EAA);
  strokeWeight(5);
  circle(width/2, height/3, 200);

  textFont(ff);
  fill(255);
  textSize(150);
  text("A", width/2, height/3-70);
  textSize(60);
  text("Random Color Game", width/2, height/3+40);
  reset();

  fill(255, 255, 255);
  textSize(40);
  text("Pess space to start", width/2, 600);
}

void keyPressed() {
  if (key == ' ') {
    mode = game;
    grandom();
  }
}
