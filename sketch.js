var acceleration = 0.002; // acceleration of flake
var numSnow = 1500; // number of snowflakes
var snowflakeArray = []; // stores the flakes

function setup() {
  createCanvas(640, 480); // draw canvas
  // if there are less than 1500 snowflakes then make more
  for (i = 0; i < numSnow; i++) {
    snowflakeArray.push(new Snow()); // add the snow flake to the array
  }
}

function draw() {
  clear();
  background(80,85,250); // set background to blue
  snowflakeArray.forEach(function(s) {
    s.update(); // draws and updates snow flakes
  });
}

function Snow() {
  this.offScreenX = function() {
    this.x = random() * width;
  }; // draws the snowflakes off of the screen so they look like they're actually falling from the sky
  this.offScreenY = function() {
    this.y = -random() * height / 5; 
  };

  this.offScreenX();
  this.y = random() * height;

  this.velocity = random();
  this.r = random(1,3); // set radius

  this.update = function() {
    this.draw(); // call draw
    this.snowfall(); // allows them to move
  };

  this.draw = function() {
    ellipse(this.x, this.y, this.r); // draw the flake
    stroke(250); // make the flake white
  };

  this.snowfall = function() {
    if (this.y < height) {
      this.y += this.velocity; //update location
      this.velocity += acceleration; //speed it up
    } else {
      this.velocity = random(); // random velocity
      this.offScreenY(); // it's going to start offscreen
      this.offScreenX();
    }
  };
}