float x = 0.0;
float y = 0.0;

void setup(){
  size(600, 600);
  background(250);
  strokeWeight(1);

  x = 0.0; //reset x
  y = 0.0; //reset y
  //grid
  while (y <height && x < width){
    line(0, y, width, y);
    line(x, height, x, 0);
    y += 20;
    x += 20;
  }
  
  strokeWeight(2);
  noFill();
  
  // top left arc
  arc(0, 150, 500, 700, PI, PI+TWO_PI, OPEN);
  // bottom left arc
  //arc(0, 600, 500, 700, PI/2, TWO_PI, OPEN);
  //top right arc
  arc(0, 800, 600, 800, PI/2, TWO_PI, OPEN);
  
  arc(800, 0, 800, 600, PI/2, TWO_PI, OPEN);
  //bottom right arc
  arc(370, 700, 600, 500, PI/2, TWO_PI, OPEN);
  
}
  void draw(){
}
