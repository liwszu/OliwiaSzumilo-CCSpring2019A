//Define a class to create the human

class Body{
  //variables being used in the body
  color c;
  float xpos;
  float ypos;
  float x, y, w, h;
  
  //Passing in the variables
  Body(float tempX, float tempY, float tempW, float tempH){
    //xpos = tempXpos;
    //ypos = tempYpos;
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
  }
  
  //Positions at start of path
  
  void display(){
    //if (move == true){
    //  x ++;
    //}
    
    //Keep human on the page
    if (x > width){
      x = 5;
    }
    ellipseMode(CENTER);
    rectMode(CENTER);
    //torso
    stroke(0);
    fill(0);
    rect(x,y,w/3,h/2);
    // Draw head
    stroke(0);
    fill(0);
    ellipse(x,y-h/1.8,w/3,h/2);
    //draw legs
    stroke(0);
    line(x - w/8,y + h/3,x - w/4,y + h/2 + 8);
    line(x + w/8,y + h/3,x + w/4,y + h/2 + 8);
    // draw arms
    stroke(0);
    line(x - w/3, y - h/2, x-w/6, y - h/8);
    line(x + w/3, y - h/2, x+w/6, y - h/8);
  }
  
  //makes the human walk
  void walk() {
    x = x + 1;
    if (x > width) {
      x = 0;
    }
  }
  
}
  
