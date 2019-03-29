class BallMotion{
  float pinkXval, pinkYval;
  float randomX, randomY;
  float evilX, evilY;
  float xDir, yDir;
  float xevilDir, yevilDir;
  int pinkBallW, pinkBallH;
  int grow;
  boolean runBall;
  float pinkScore;
  BallMotion(){
    // allows ball to move
    pinkXval = 300;
    pinkYval = 300;
    randomX = 300;
    randomY = 300;
    evilX = 300;
    evilY = 300;
    xDir = 0;
    yDir = 0;
    xevilDir = 0;
    yevilDir = 0;
    pinkBallW = 20;
    pinkBallH = 20;
    grow = 5;
    runBall = true;
    pinkScore = 0;
    
  }
  
  public void movePink(){
    if (keyPressed == true && key == CODED && keyCode == RIGHT){
      pinkXval = pinkXval + 5;
      // main ball can move right
    }
    
    if (keyPressed == true && key == CODED && keyCode == LEFT){
      pinkXval = pinkXval - 5;
      // main ball will move left five when left key is pressed
    }
    
    if (keyPressed == true && key == CODED && keyCode == DOWN){
      pinkYval = pinkYval + 5;
      // main ball can move down everytime down key is pressed
    }
    
    if (keyPressed == true && key == CODED && keyCode == UP){
      pinkYval = pinkYval - 5;
      //main ball can move up five when the up key is clicked
    }
  }
    
  public void saveX(){
    if (pinkXval < randomX + pinkBallW/2 && pinkXval > randomX - pinkXval/2 && pinkYval < randomY +pinkBallH/2 && pinkYval > randomY - pinkYval/2){
      randomX = random (40, 760);
      // random val can be within these parameters
      randomY = random (40, 760);
      // random val for y can be within these parameters
      xDir = random (-2, 2);
      // x direction that it moves will be random within these parameters
      yDir = random (-2,2);
      // y direction that it moves will be random within these parameters
      pinkBallW = pinkBallW + grow;
      // allows the width of the ball to grow
      pinkBallH = pinkBallH + grow;
      // allows the height of the ball to grow
    }
    if (pinkXval < evilX + pinkBallW/2 && pinkXval > evilX - pinkXval/2 && pinkYval < evilY +pinkBallH/2 && pinkYval > evilY - pinkYval/2){
      evilX = random (40, 760);
      // random val can be within these parameters
      evilY = random (40, 760);
      // random val for y can be within these parameters
      xevilDir = random (-2, 2);
      // x direction that it moves will be random within these parameters
      yevilDir = random (-2,2);
      // y direction that it moves will be random within these parameters
      pinkBallW = pinkBallW - grow;
      // allows the width of the ball to grow
      pinkBallH = pinkBallH - grow;
      // allows the height of the ball to grow
    }
  }
    // add a parameter that will shrink the ball in half if it touches another ball if you have time
  public void moveYayBall(){
    if(runBall == true){
      // allows the ball to move by adding the random x direction and y direction values that are being generated
      randomX = randomX + xDir;
      randomY = randomY + yDir;
      evilX = evilX + yevilDir;
      evilY = evilY + yevilDir;
    }
    
    if ( pinkYval < 0){
      pinkYval *= -10.0;
    }
    
    if ( pinkYval > height){
      pinkYval -= 30.0;
    }
    
    if ( pinkXval > width){
      pinkXval -= 30.0;
    }
    if ( pinkXval < 0){
      pinkXval += 30.0;
    }
    
    if (randomX > width || randomX < 0.0 || randomY > height || randomY < 0){
      // makes sure the ball stays at least 20 px away from the edge of the screen
      xDir *= -1.0;
      yDir *= -1.0;

    }
    if (evilX > width || evilX < 0.0 || evilY > height || evilY < 0){
      yevilDir *= -1.0;
      xevilDir *= -1.0;
    }

    fill (255,0,0);
      // generates random color for not the main ball
    ellipse (randomX, randomY, 15, 15);
      // sets parameters for the ball that is being eaten
      
    fill(255, 192, 203);
      // make pink ball
    ellipse(pinkXval, pinkYval, pinkBallW, pinkBallH);
      // creates adjustable parameters for the ball to be able to grow
      
    fill(0,255,0);
    ellipse(evilX, evilY, 20, 20);
    
    }


  
  
}
