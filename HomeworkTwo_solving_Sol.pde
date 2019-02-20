//A square is divided horizontally and vertically into four equal parts, 
//each with lines in four directions superimposed progressively.


float x = 0.0; //x-coord for lines
float y = 0.0; //y-cord for lines



void setup(){
  //setup parameters
  size(800, 800);
  background(250);
  
//}

//void draw(){
  background(250);
  
  strokeWeight(1);
  // this divides the page into four squares
  line(width/2, 0, width/2, height);
  line(0, height/2, width, height/2);
  
  
  x = 0.0; // reset x counter
  y = 0.0; // reset y counter

  
  //vertical lines in two left quadrants
  while (x < width/2){
    line(x, 0, x, height);
    x += 10;
  }
  
  //vertical lines top right
  while (x < width){
    line(x, height/2, x, height);
    x += 10;
  }
  
  
   // horizontal lines on entire plane
   x = 0.0;
   y= 0.0;
   
  while(x < width && y < height){
    line(0, y, width, y);
    y += 10;
    
  }
  
  // diagnol lines on left half
  x= 0.0; //reset x
  y= 0.0; //reset y
  
  while(x < width/2){
    line( x+ 10, height/2, width/2, y +10);
    line( 0, y+10, x +10, 0);
    line( width/2, y + height/2, x, height);
    line(0, y+height/2, x, height/2);
    x+= 10;
    y += 10;
  }
  
  // diagnol lines facing other way in top left plane
  x = 0.0; //reset x
  y = 0.0; //reset y
  while(x < width/2 ){
    line(0, y, -x + width/2 , height/2);
    line(x, 0, width/2, -y + height/2);
    x += 10;
    y += 10;
  }
  
  
  
  
  
  
  
}
