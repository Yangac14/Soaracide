import processing.video.*;


class Menu{

  
  PImage title;
  
  void displayMenu(){ //This is the menu display
    title = loadImage("Soaracide.png");
    
    image(title,350, 200);
    textSize(30);
    text("Press any key to Start", 440, 500);
    if(keyPressed == true){
      Soaracide.gameState = 1;
    }
  }
}
