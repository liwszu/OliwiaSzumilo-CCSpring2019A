function setup() {
  createCanvas(710, 400);
   body = new Body(width/2, height/2, 100, 100);
}

function draw() {
  background(175, 238, 238);
  fill(255,215,0);
  ellipse(width - 600, height/8, 100, 100);
  fill(205,192,176);
  rect(0 , height/1.65, width*2, height/3);
}



let Body = function(x,y,w,h) {
  this.x = x;
  this.y = y;
  this.w = w;
  this.h = h;
  this.c = c;
  this.xpos = xpos;
  this.ypos = ypos;
}

Body.prototype.display = function() {
  if(x > width){
    x = 5; //keep human on page
    ellipseMode(CENTER);
    rectMode(CENTER);
    //torso
    stroke(0);
    fill(0);
    rect(x,y,w/3,h/2);
    // head
    stroke(0);
    fill(0);
    ellipse(x,y-h/1.8,w/3,h/2);
    // legs
    stroke(0);
    line(x - w/8,y + h/3,x - w/4,y + h/2 + 8);
    line(x + w/8,y + h/3,x + w/4,y + h/2 + 8);
    // arms
    stroke(0);
    line(x - w/3, y - h/2, x-w/6, y - h/8);
    line(x + w/3, y - h/2, x+w/6, y - h/8);


  }

Body.prototype.walk = function() {
    x = x + 1;
    if (x > width) {
      x = 0;
    }
  }


