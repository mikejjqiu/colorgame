
void game() {

  fill(0);
  rect(width/4, height/2, width/2, height);
  fill(255);
  text("True", width/4, height/4);


  rect(3*width/4, height/2, width/2, height);
  fill(0);
  text("False", 3*width/4, height/4);

  fill(#385645, 70);
  noStroke();
  rect(width/2, height-100, 600,100);
  fill(255);
  text("Score:"+score, width/2, height-100);

  //==============


  fill(colors[c]);
  text(words[w], width/2, height/2);

  countdown();
}


void gameclicks() {

  if (w==c) {
    if (mouseX < width/2) score++;
    else mode = gameover;
  }

  if (w != c) {
    if (mouseX > width/2) score++;
    else mode = gameover;
  }

  grandom();
  time = 200;
}



/* redundant
 if (w==c && mouseX < 400) {
 score++;
 } else if (c==w && mouseX > 400) {
 mode = gameover;
 }
 
 if (w-c >= 1 && mouseX > 400) {
 score++;
 } else if ( c-w >= 1 && mouseX > 400) {
 score++;
 } else if (w-c >= 1 && mouseX < 400) {
 mode = gameover;
 } else if (c-w >= 1 && mouseX < 400) {
 mode = gameover;
 } 
 */
