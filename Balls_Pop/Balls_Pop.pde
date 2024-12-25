int[] x = {0, 0, 0, 0}; // Initial x-positions of the balls
int[] speeds = {2, 4, 6, 8}; // Speeds of the balls
int ballSize = 30; // Diameter of the balls
int[] y = {height / 2, 3 * height / 2, 5 * height / 2, 7 * height / 2}; // Y positions of the balls
int[] shades = {0, 60, 120, 180}; // Shades of black (0 is darkest, higher values are lighter)

void setup() {
  size(800, 400);
  background(255); // Start with a white background
}

void draw() {
  // Draw each ball
  for (int i = 0; i < 4; i++) {
    fill(shades[i]); // lighter shades of black
    ellipse(x[i], y[i], ballSize, ballSize);
    x[i] += speeds[i];
  }
}
