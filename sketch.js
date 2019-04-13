let system;

function setup() {
  createCanvas(710, 400);
  system = [];
}

function draw() {
  bg = map(mouseY, 0, 600, 0, 255);
  background(bg); // changes background color according to y coordinate of mouse
  for (i = 0; i < system.length; i++) {
    system[i].run();
    system[i].addParticle();
  }
  
}

function mousePressed() {
  this.p = new ParticleSystem(createVector(mouseX, mouseY));
  system.push(p);
}


let Particle = function(l) {
  this.acceleration = createVector(0, 0.01); // acceleration that will be added to the velocity
  this.velocity = createVector(random(-1.5, 1.5), random(-1.5, 0));
  this.l = l.copy(); // position that the rectangle will originate from (will be mouseX and mouseY)
  this.color1 = random(0,255); // random r value will be assigned
  this.color2 = random(0,255); // random g value will be assigned
  this.color3 = random(0,255); // random b value will be assigned
  this.alpha = 200;//alpha value of rectangle
}

Particle.prototype.run = function() {
  this.update();
  this.display();
}

Particle.prototype.update = function(){
  this.velocity.add(this.acceleration); // adds acceleration to the velocity
  this.l.add(this.velocity); // allows rectangle to move
  this.alpha -= 2.0; //subtract to make the rectangle eventually disappear
}

Particle.prototype.display = function() {
  noStroke();
  fill(this.color1, this.color2, this.color3, this.alpha);
  rect(this.l.x, this.l.y, this.l.x + 3, this.l.y + 3);//starts drawing the rectangles where the mouse was pressed and the x value plus three (of the screen) will be the length of one side of the rectangle and the y value plus three will be the other length of side of rectangle
}

Particle.prototype.dead = function(){
  return this.alpha <0; //returns alpha value below zero in order to remove it
}

let ParticleSystem = function(l) {
  this.origin = l.copy();
  this.particles = [];
};

ParticleSystem.prototype.addParticle = function() {
  p = new Particle(this.origin);
  this.particles.push(p);
};

ParticleSystem.prototype.run = function() {
  for (let i = this.particles.length-1; i >= 0; i--) {
    let p = this.particles[i];
    p.run();
    if (p.dead()) {
      this.particles.splice(i, 1);
    }
  }
}



