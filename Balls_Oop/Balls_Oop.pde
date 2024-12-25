Ball[] balls = new Ball[4];

void setup() {
  size(800, 400);
  background(255); // Start with a white background

  // Initialize balls with different speeds, y-positions, and shades
  for (int i = 0; i < balls.length; i++) {
    balls[i] = new Ball(0, (i + 1) * height / 5, (i + 1) * 2, 30, i * 60);
  }
}

void draw() {
  // Draw and update each ball
  for (int i = 0; i < balls.length; i++) {
    balls[i].move();
    balls[i].display();
  }
}

class Ball {
  float x, y, speed, size;
  int shade;

  Ball(float x, float y, float speed, float size, int shade) {
    this.x = x;
    this.y = y;
    this.speed = speed;
    this.size = size;
    this.shade = shade;
  }

  void move() {
    if (x < width) {
      x += speed; // Move the ball if it's not yet at the end
    }
  }

  void display() {
    fill(shade); // Set the shade for this ball
    ellipse(x, y, size, size);
  }
}
