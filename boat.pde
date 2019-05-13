//the shark is going to be the obstacle the boat wants to avoid

class Player{
  float x;
  float y;
  float w;
  float h;
  // x and y values determine original location
  // w and h determine size 
  Player(float x, float y, float w, float h){
    this.x = x;
    this.y = y;
    this.w  = w;
    this.h = h;
    
  }
  
  void show(){
    // this is what I used to detect if there is collisions between objects
    
    noFill();
    noStroke();
    rect(x, y, w, h);
  }
  
  void move(float ydir){
    //allows Jordans head to move when user clicks arrows
    
    y += ydir -5;
  }
}
