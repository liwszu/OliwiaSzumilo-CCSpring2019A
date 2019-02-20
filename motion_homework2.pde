// motion is of the circle and the user interaction is changing the color of the large circle
int flow = 1;

int x_location = 600;
int y_location = 15;
boolean up = true;


void setup(){
  size(600,600);
  background(250);
  strokeWeight(3);
  fill(0, 0, 225);
}

void draw(){
  
  float x_location = 600;
  background  (250); // refresh background
  
  if (true){
    
    x_location -= 50;
    ellipse(x_location, random(600), x_location, random(600));
    x_location = x_location + flow;
  }
  //else if(
  }


void keyPressed(){
  if (key == 'r'){
    up = !up;
    fill(random(225), random(225), random(225));
  }


}
