//Create a character (animal, person, etc.) and make a function that draws the character. 
//Your character function must have parameters allowing you to draw or animate certain properties. 
//Some example parameters you might want to create are height, width, positionX, positionY. 
//Create a sketch around your character

//Oliwia Szumilo Homework Five 


Body body;

void setup(){
  size (680, 470);
  // Create human on bottom of page
  body = new Body(width/2, height/2, 100, 100);
  
}

void draw(){
  background(175, 238, 238);
  fill(255,215,0);
  ellipse(width - 600, height/8, 100, 100);
  fill(205,192,176);
  rect(0 , height/1.65, width*2, height/3);
  body.walk();
  body.display();
}
