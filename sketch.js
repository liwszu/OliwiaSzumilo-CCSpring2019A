function setup() {
  createCanvas(710, 400);
  this.body = new Body(width/2, height/2, 100, 100);
}

function draw() {
  background(175, 238, 238);
  fill(255,215,0);
  ellipse(width - 600, height/8, 100, 100);
  fill(205,192,176);
  rect(0 , height/1.65, width*2, height/3);
  this.body.display();
  
}



let Body = function(x,y,w,h) {
  this.x = x;
  this.y = y;
  this.w = w;
  this.h = h;
  
  
}
Body.prototype.display = function() {
  
    this.x = 5; //keep human on page
    ellipseMode(CENTER);
    rectMode(CENTER);
    //torso
    stroke(0);
    fill(0);
    rect(this.x,this.y,this.w/3,this.h/2);
    // head
    stroke(0);
    fill(0);
    ellipse(this.x,this.y-this.h/1.8,this.w/3,this.h/2);
    // legs
    stroke(0);
    line(this.x - this.w/8,this.y + this.h/3,this.x - this.w/4,this.y + this.h/2 + 8);
    line(this.x + this.w/8,this.y + this.h/3,this.x + this.w/4,this.y + this.h/2 + 8);
    // arms
    stroke(0);
    line(this.x - this.w/3, this.y - this.h/2, this.x-this.w/6, this.y - this.h/8);
    line(this.x + this.w/3, this.y - this.h/2, this.x+this.w/6, this.y - this.h/8);
  

}


