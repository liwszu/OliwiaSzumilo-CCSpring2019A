void setup(){
  background(231, 233, 220);
  size(800, 1000);
  //top shape
  color p = color(58, 36, 67);
  fill(p);

  quad(380, 0, 550, 50, 450, 270, 280, 220); // syntax quad(x1, y1, x2, y2, x3, y3, x4, y4);
  
//yellow
   beginShape();
   fill(255,255,0);
    vertex(480, 455);
    vertex(365, 450);
    vertex(385, 625);
    vertex(445, 625);
    
   color m = color(215, 219, 102);
   fill(m);
   endShape(CLOSE);
   
   
//blue
  beginShape();
    
   
    vertex(575, 610);
    vertex(575, 625);
    
    vertex(220, 590);
    vertex(220, 575);
  color z = color(32, 49, 142);
  fill(z);
  endShape(CLOSE);
   
// black square
  beginShape();
  fill(0);
    vertex(345,545); //tr
    vertex(345, 640); //br
    
    vertex(250,640); //bl
    vertex(250,545); //tl
    
  endShape(CLOSE);


//black rect
  beginShape();
  fill(0);
    vertex(380, 640); //tr
    vertex(390, 670); //br
    
    vertex(310, 700); //bl
    vertex(300, 670); //tl
  
  endShape(CLOSE);
  
  
//fat red rectangle
  beginShape();
  
    vertex(425, 670); //tr
    vertex(425, 685); //br
    
    vertex(380, 695); //bl
    vertex(380, 680); //tl
   color q = color(169,49,60);
   fill(q);
  endShape(CLOSE);
    
    
    
//skiny red rectangle

  beginShape();
  
 
    vertex(490, 700); //tr
    vertex(490, 710); //br
    
    vertex(410, 710); //bl
    vertex(410, 700); //tl
  
  fill(q);
  endShape(CLOSE);
  
  
  
  color c = color(70,145,78);
  fill(c);
  ellipse(440, 728, 25,25);




  
}


void draw() {
}
