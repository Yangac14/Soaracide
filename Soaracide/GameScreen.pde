class GameScreen {
  
  Obstacle obstacle1 = new Obstacle();
  Obstacle obstacle2 = new Obstacle();
  Orb orb = new Orb();
  
  void displayGame(){ //This displays the game after the switch case
    if(mousePressed == true || keyPressed == true){
      orb.update();
      orb.grav = 10;
  }
  
  orb.display();
  orb.collision1(obstacle1); //Lines 14-34 consist of the obstacles and collision with them
  orb.collision2(obstacle2);
  obstacle1.show();
  obstacle2.show();
  if(obstacle2.x <= 0){ //This resets the obstacle at its beginning location with a new speed and height and y-location
    obstacle2.randomize2(int(random(0+obstacle2.h/2, height - obstacle2.h/2)));
    obstacle2.randomh2(int(random(120, 200)));
    obstacle2.speedR(int(random(10,15)));
    System.out.println(obstacle2.speedx);
    Soaracide.score++;
    System.out.println("The score is: " + Soaracide.score);
    System.out.println("The highscore is: " + Soaracide.highscore);
  }
  if(obstacle1.x <= 0){ //This resets obstacle 1 at its beginning location with a new speed and height and y-location
    obstacle1.randomize1(int(random(0+obstacle1.h/2, height - obstacle1.h/2)));
    obstacle1.randomh1(int(random(120,200)));
    obstacle1.speedR(int(random(10,20)));
    System.out.println(obstacle1.speedx);
    Soaracide.score++;
    System.out.println(Soaracide.score);
    System.out.println(Soaracide.highscore);
  }
}

void displayScore() { //This displays the current score

  if(Soaracide.score > Soaracide.highscore){
    tempHigh = Soaracide.score;
  }
  highscore = tempHigh;
   if(Soaracide.score == -1){
      text("Score: " + 0,50,50);
  }
  else{
  text("Score: " + Soaracide.score,50,50);
  }
}
void displayHighScore(){  //This displays the current Highscore and keeps track of it
 
  text("Highscore: " + highscore, width-250, 50);
  }
}
  
