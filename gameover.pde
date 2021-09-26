void gameover() {
  high_score();

  image(gobg,0,0,width,height);


  textSize(40);
  fill(0, 408, 612, 100);
  text("Y o u   d i e", width/2, height/2-200, -120);
  textSize(70);
  text("click anywhere to restart", width/2, height/2-50);
  textSize(50);
  text("score: "+score, width/2, 600);
  text("highscore: "+highscore, width/2, 700);

  textSize(40);
  fill(255, 255, 255, 810);
  text("Y o u   d i e", width/2+5, height/2-195, -120);
  textSize(70);
  text("click anywhere to restart", width/2+5, height/2-45);
  textSize(50);
  text("score: "+score, width/2+5, 605);
  text("highscore: "+highscore, width/2+5, 705);
}

void gameoverclicks() {
  mode = intro;
}
