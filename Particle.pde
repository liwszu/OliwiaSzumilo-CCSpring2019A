// Particle class

class Particle {
  PVector position;
  PVector velocity;
  PVector acceleration;
  float life;
  color col;

  public Particle(PVector l) {
    acceleration = new PVector(0, 0.01);
    velocity = new PVector(random(-1.5, 1.5), random(-1.5, 0));
    position = l.copy();
    life = 200.0;
    col = color(random(255),random(255), random(255));
  }

  public void run() {
    update();
    display();
  }

  
  public void update() {
    velocity.add(acceleration);
    position.add(velocity);
    life -= 4.0;
  }

  
  public void display() {
    fill(col, life);
    rect(position.x, position.y, position.x + 3, position.y + 3);
  }

  
  boolean dead() {
    return (life < 0.0);
  }
}
