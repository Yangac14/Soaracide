class Obstacle{
  
  float x;
  float y;
  float w;
  float h;
  float speedx;
  Obstacle(){ //Contructor for the Obstacle class
    x = width-10;
    y = height/2;
    w = 20;
    h = 120;
    speedx = 10;
  }
  
  void show(){ //The actual drawing of the obstacles
    fill(255);
    rectMode(CENTER);
    rect(x,y,w,h);
    x -= speedx;
  }

  
  void randomize1(int rand){ //Randomization of the 1st obstacles y coordinate
  y = rand;
  x = width-10;
  }
  
  void randomize2(int rand){  //Randomization of the 2nd obstacles y coordinate 
  y = rand;
  x = width*1.5;
  }
  
  void randomh1(int rand){ //Randomizing height of obstacle 1
    h = rand;
  }
  void randomh2(int rand){ //Randomizaing height of obstacle 2
    h = rand;
  }
  void speedR(int rand){  //Randomizing the speed at which the obstacles fly at
    speedx = rand;
  }
  void resetObstacle(){ //This resets the obstacles
    x = width-10;
    y = height/2;
    w = 20;
    h = 120;
    speedx = 10;
    
  }
  float getX() {
    return x;
  }
}
