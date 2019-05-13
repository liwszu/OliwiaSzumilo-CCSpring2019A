
import processing.video.*;
import processing.sound.*;
// load the video and sound file
SoundFile file;
String audioName = "baby.mp3";
String path;
Movie water;

PImage boat;
PImage blue_sharkie;
PImage gas;
PImage green_sharkie;
PImage pink_sharkie;
PImage ocean_background;

// load all the images



Player play;
Shark s;
Fuel f;
Fuel fu;
Green g;
Pink pin;

// classes

public int score; // keeps track of score
public int lives; // keeps track of lives
public int highscore; // highscore

public boolean start_game = false;
boolean game_over = false;

// booleans for game loop


void setup() {
  size(700,500);
  lives = 5;
  // number of lives
  score = 0; // score
  highscore = 0; // highscore
  
  water = new Movie(this, "/Users/Oliwia/Desktop/help/water.mov"); 
  //need direct path or it won't load
  water.loop();
  //loop the video
  
  path = sketchPath(audioName);
  file = new SoundFile(this, path);
  file.jump(25.0);
  // skip to 25th second so it starts playing at the baby shark part
  
  ocean_background = loadImage("ocean.jpg");
  // backrground for home and restart page
  
  boat = loadImage("ship.png");
  // what you will be playing with
  
  gas = loadImage("fuel.png");
  // the lives you have
  
  blue_sharkie = loadImage("blueShark.png");
  // the obstacle
  
  green_sharkie = loadImage("greenShark.png");
  
  pink_sharkie = loadImage("pinkShark.png");
  
  play = new Player(30,300, 50, 80);
  // draws your character
  
  s = new Shark(random(600, 700), random(0, height - 40), 80,50);
  // draws the blue shark
  g = new Green(random(700, 800), random(0, height - 40), 100,100);
  //draws the green shark
  pin = new Pink(random(650, 750), random(0, height - 40), 100,100);
  // draws the pink shark
  
  
  fu = new Fuel(random(700, 8000), random(0, height - 40), 60,40);
  f = new Fuel(random(1000, 1700), random(0, height - 40), 60,40);
  // draws the lives
  
}
  


void draw() {
  
  if (start_game == false && game_over == false){
    background(ocean_background);
    // set background
    String home = "Press space bar to start game";
    // instruct user how to start game
    fill(250);
    text(home, 50, 300);
    textSize(40);
    text("JORDAN SHARK DOO DOO" , 100, 100);
    text("Use up and down arrows to move.", 0, height);
    // write on the homescreen
  }
  else if(start_game == true){
    
    image(water, 0, 0);  // video file
    //make sure to put this first so it doesnt go over everything
    
    image(boat, (play.x), (play.y), (play.w), (play.h));
    image(blue_sharkie, (s.x), (s.y), (s.w), (s.h));
    image(gas, (f.x), (f.y), (f.w), (f.h));
    image(gas, (fu.x), (fu.y), (fu.w), (fu.h));
    image(green_sharkie, (g.x), (g.y), (g.w), (g.h));
    image(pink_sharkie, (pin.x), (pin.y), (pin.w), (pin.h));
    
    // load all images
    
    textSize(10);
    String life_string = "Lives: ";
    String time_string = "Score: ";
    // display lives and score
    String life_count = String.valueOf(lives);
    String score_count = String.valueOf(score);
    
    
    fill(250);
  
    text(life_string, 10, 10, 70, 80);
    text(life_count, 50, 10, 70, 80);
    text(time_string, 500, 10, 70, 80);
    text(score_count, 550, 10, 70, 80);
  
    play.show();              
    
    f.check(play);
    fu.check(play);
    s.checkCollision(play);
    g.checkCollision(play);
    pin.checkCollision(play);
    
    // tests collision of obstacles with jordans face
    
    pin.update();
    g.update();
    s.update();
    f.update();
    fu.update();
    
    // update everything on the screen
  }
  if(lives == 0 && score < highscore){
    background(ocean_background);
    start_game = false;
    game_over = true;
    // post highscore and your score
    String time_string = "Your Score: ";
    String score_count = String.valueOf(score);
    String over = "Press r key to restart game";
    String highscore_string = "You did not beat your highscore of: ";
    textSize(20);
    fill(250);
    text(over, width/2, 50);
    text(time_string, width/2, 200);
    text(score_count, width/2 +100, 200);
    text(highscore_string, width/2 , 300);
    text(highscore, width/2, 350);
    
    
  }else if(lives == 0 && score > highscore){
    background(ocean_background);
    start_game = false;
    game_over = true;
    
    highscore = score;
    String time_string = "Score: ";
    String score_count = String.valueOf(score);
    String over = "Press r key to restart game";
    String yay = "YAY your new high score is: ";
    textSize(20);
    fill(250);
    text(over, width/2, 50);
    text(time_string, width/2, 200);
    text(score_count, width/2 +100, 200);
    text(yay, width/2 , 300);
    text(highscore, width/2, 350);
    
  }
}


  

void movieEvent(Movie m) {
  m.read();
}


//allow the boat to move up and down to avoid the obstacles and get the fuel
void keyPressed() { 
  if (key == ' ' && start_game == false){
    start_game = true; 
  }else if (key == 'r' && game_over == true){
    game_over = false;
    start_game = true;
    lives = 10;
    score = 0;
  }
    if (keyCode == UP && play.y > 0) {
      play.y -= 10;
    } else if (keyCode == DOWN && play.y < height-90) {
      // subtract 50 from height to account for height of boat
      play.y += 10;
    }
}
