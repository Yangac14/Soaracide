class Orb{
  
  float x = 50;
  float y = height/2;
  float speed = 20;
  float grav = 10;
  float r = 0;
  float g = 125;
  float b =  200;
  float initialColor = 255;
  void update(){ //This updates the Orb object to go up with every button press
   
    y -= speed;
    
  }
  
  void display(){ //display of the orb
  
    fill(r,g,b); //Lines 19-22 increment the color variables
    r += 1;
    g += 1;
    b += 1;
    
    if(r == 255){ r = 0; } //Lines 24-26 set the variables back to 0 when it reaches 255
    if(g == 255){ g = 0; }
    if(b == 255){ b = 0; }
    
    ellipseMode(CENTER); // The actual drawing of the orb
    ellipse(x,y,50,50);
    
    grav += .25; //This is the gravity at which the ball falls at
    y += grav;
  }
  
  void collision1(Obstacle obstacle1){ //This is the collision for obstacle 1 with the orb
    if(x > obstacle1.x && y < obstacle1.y + obstacle1.h/2 && y > obstacle1.y - obstacle1.h/2 || y < 0 || y > height){
      Soaracide.gameState = 0;
      obstacle1.resetObstacle();
      System.out.println("touch"); //This was to test if collision was working
      Soaracide.score = 0;
      y = height/2;
    }
  }
  void collision2(Obstacle obstacle2){ //This is the collision for obstacle 2 with the orb
    if(x > obstacle2.x && y < obstacle2.y + obstacle2.h/2 && y > obstacle2.y - obstacle2.h/2){
      Soaracide.gameState = 0;
      obstacle2.resetObstacle();
      System.out.println("touch"); //This was to test if collision was working
      Soaracide.score = 0;
      y=height/2;
    }
  }
}
