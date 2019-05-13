//the shark is going to be the obstacle the boat wants to avoid

class Green{
  float x;
  float y;
  float w;
  float h;
  float xspeed = random(-3,-7);
  
  boolean lifeDown = false;
  
  // x and y values determine original location
  // w and h determine size 
  // xspeed is how fast the shark swims across the screen
  // I set it to be a random speed 
  // the boolean is set to false. once it is triggered to be true then a life is lost
  
  Green(float x, float y, float w, float h){
    this.x = random(650, 800);
    this.y = random(0, height - 40);
    this.w  = w;
    this.h = h;
  }
  void show(){
    noFill();
    noStroke();
    rect(x, y, w, h);
    //create an invisible rectangle
  }
  void checkCollision(Player p){
    lifeDown = greenCollision(p.x, p.y, p.w, p.h, x, y, w, h);
    // detects if there is a colision between the shark and jordans head
  }
  

  
  void attack(){
    x += xspeed;
    // allows the shark to move

    if( x < -100 ){
      score += 10;
      // if you don't get hit by a shark and it goes off 
      //the screen then your score will increase
    }
    if (x > width || x < -100){
      g.x = random(650,750);
      g.y = random(0, height - 50);
      g.xspeed = random(-3,-7);
      // if off screen then shark will get a new x and y value and speed
      
    }
    
  }
  
  void display() {
    if (lifeDown == true && lives > 0) {
      // if there is a collision detected then a life will be lost
      // new random x and y and xspeed
      // score lowers upon collision
      lives = lives - 1;
      g.x = random(600,700);
      g.y = random(0, height - 40);
      g.xspeed = random(-3,-7);
      score -= 5;
    }
    
  }
  
  void update(){
    g.show();
    g.attack();
    g.display();
    // updates the shark to be able to move and be able to detect collision
  }
  
}
boolean greenCollision(float px, float py, float pw, float ph,
float gx, float gy, float gw, float gh){
      // set the boolean and then take in floats for the fuel and the player
      if (px < gx + gw && px + pw > gx && py < gy + gh && ph + py > gy) {
          return true; 
          // if there is a collision then it will return true 
        } else{
          return false;
        }// if there is no collision it will reutrn false
  }
