float anglee = 0.0; //angle to rotate by
float scalee = 1.0; // scale of shape
float increase = 0.02; //how much to increase scale by

boolean colors = true;
void setup(){
  size (1500, 1000);
  background(250);
  rectMode(CENTER);
  
  // ADD A BOOLEAN TO CHANGE COLORS
  
}

void draw(){
  background(250);
  
  pushMatrix();
  
  translate(150,150);
  rotate(-1*radians(45));
  scale(scalee);
  
  rect(0, 0, 150, 150);
  popMatrix();
  
  pushMatrix();
  translate(width/4 - 150, height/4 - 150);
  rotate(-1*radians(45));
  scale(scalee);
  rect(600, 600, 450, 450);
  popMatrix();
  
  
  pushMatrix();
  translate(150, height - 150);
  rotate(-1*radians(45));
  scale(scalee);
  rect(600, 600, 450, 450);
  popMatrix();
  
  
  pushMatrix();
  translate(width/4 + 150, 150);
  rotate(-1*radians(45));
  scale(scalee);
  rect(600, 600, 450, 450);
  popMatrix();
  
  
  pushMatrix();
  translate(150, 600);
  rotate(-1*radians(45));
  scale(scalee);
  rect(700, 30, 450, 450);
  popMatrix();
  
  
  pushMatrix();
  translate(150, 600);
  rotate(-1*radians(45));
  scale(scalee);
  rect(100, 600, 300, 700);
  popMatrix();
  
  anglee += 5.0;
  
  scalee += increase;
  
  if(scalee >= 1.5 || scalee <= 0.5){
    increase *= -1;
  }
  
}


void mousePressed(){
  fill (random(250), random(250), random(250));
}
  
