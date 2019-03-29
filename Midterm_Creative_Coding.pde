
BallMotion moveballs;
void setup(){
    
  size (800,800);
  // set parameters of screen
  background(0);
  // make background black
  moveballs = new BallMotion();
}

void draw(){
  background(0);
  //refresh background
  moveballs.movePink();
  moveballs.saveX();
  moveballs.moveYayBall();


}
