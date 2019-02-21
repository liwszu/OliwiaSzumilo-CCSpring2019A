// Homework Three
// Oliwia Szumilo

int balls = 50;

// limit the balls to these parameters
// including use of an array

float[] x_loc = new float [balls];
float[] y_loc = new float [balls];

float[] x_speed = new float [balls];
float[] y_speed = new float [balls];

float move_y = 0;

boolean move = true;
boolean brush = false;

void setup(){
  size(600,600);
  background(250);
  
  for (int i = 0; i < balls; i++){
    x_loc[i] = random (50, width-50);
    y_loc[i] =random(50, height-50);
    
    x_speed[i] = random(-5, 5);
    y_speed[i] = random(-5, 5);
    
  }
}
  
void draw(){
  background(250);
  
  for(int i = 0; i < balls; i++){
    //make the circle
    ellipse(x_loc[i], y_loc[i], 50, 50);
    move_y = move_y +.01;
    
    if(x_loc[i] > width || x_loc[i] < 0.0){
      x_speed[i] *= -1;
    }
    if (y_loc[i] > height || y_loc[i] < 0.0){
      y_speed[i] *= -1;
    }
    
    if (move){
      x_loc[i] += x_speed[i];
      y_loc[i] += y_speed [i];
    }
    
    if (brush == true){
      strokeWeight(20);
      ellipse(mouseX, mouseY + move_y, 20,  20);
    }
    
    else if(brush == false){
      strokeWeight(2);
    }
      
  }
}

void keyPressed(){
  if(key == 'c'){
    
    move = !move;
  }
  else if(key == ' '){
    fill (random (225), random(225), random(225));
    
  }
}

void mousePressed(){
  brush = true;
  }
  
void mouseReleased(){
  brush = false;
}

  
  
  
  
  
  
  
