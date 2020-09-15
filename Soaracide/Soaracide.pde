//Music is credited to https://archive.org/details/Stars_2D
import processing.sound.*;
import processing.video.*;
static int gameState;
static int score;
static int highscore;
static int tempHigh;
Menu start;
Movie bg;
PImage title, startMenu;
SoundFile bgMusic;
GameScreen game;


void setup(){ //Setup entails the initialization of variables
  
  size(1200,600);
  background(0);
  
  start = new Menu();
  game = new GameScreen();
  gameState = 0;
  score = -1;
  
  textMode(CENTER);
  bg = new Movie(this, "Movie.mov");
  bg.play();
  
  bgMusic = new SoundFile(this, "StartMusic.wav");
  bgMusic.loop();
}

void movieEvent(Movie bg) { //Function to read the movie background
  bg.read();  
}

void draw(){
 background(0);
  
  tint(255,150);
  image(bg,0,0);
  switch(gameState) { //These determine the state of the game ie. Menu and gameplay
  case 0 : //Displayed from the Menu class
      start.displayMenu();
      game.displayHighScore();
      break;
  case 1 : //Gameplay displayed from the GameScreen class
      game.displayGame();
      game.displayScore();
      game.displayHighScore();
      break;
  case 2 : //Ending Screen located within the Menu class
      start.displayMenu();
      break; 
  }
  
  
}
