class Fuel{
  float x;
  float y;
  float w;
  float h;
  float xspeed = random(-2,-5);
  
  boolean lifeUp = false;
 
  // x and y values determine original location
  // w and h determine size 
  // xspeed is how fast the fuel swims across the screen
  // I set it to be a random speed
  
  Fuel(float x, float y, float w, float h){
    this.x = 2000;
    this.y = random(0, height - 50);
    this.w  = w;
    this.h = h;
    
  }
  
  void check(Player pl) {
    lifeUp = lifeCollision(pl.x, pl.y, pl.w, pl.h, x, y, w, h);
    // detects if there is a colision between the fuel and jordans head
  }
  
  void show(){
    noFill();
    noStroke();
    rect(x, y, w, h);
    // the rectangle used for collision detection
  }
  
  void heal(){
    x += xspeed;
    // allows the fuel to move
    if (x > width || x < -3000 || lifeUp == true){
      // if the fuel is off the screen or if there is a collision then a new random location and speed is picked
        x = random(600,700);
        y = random(0, height - 50);
        xspeed = random(-2,-5);
     }
  }
  
  void display() {
    if (lifeUp == true && lives < 5){
      // if there is a collision then a life is added and a new position and speed are picked and the score is increased
      lives = lives + 1;
      f.x = random(800,1500);
      f.y = random(0, height - 50);;
      f.xspeed = random(-4,-7);
      score += 20;
    }
  }
  
  void update(){
    f.show();
    f.heal();
    f.display();
    fu.show();
    fu.heal();
    fu.display();
    // updates the fuel to move and be able to detect collision
  }
}
    
  

  boolean lifeCollision(float px, float py, float pw, float ph,
  
  float fx, float fy, float fw, float fh){
    // set the boolean and then take in floats for the fuel and the player
          if (px < fx + fw && px + pw > fx && py < fy + fh && ph + py > fy) {
          return true; // if there is a collision then it will return true 
        } else{
          return false;
        } // if there is no collision it will reutrn false
  }
