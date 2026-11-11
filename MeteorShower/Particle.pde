class Particle {
  float x, y;
  boolean visible;
  int flashInterval = 40;

  Particle() {
    this.x = random(width);
    this.y = random(height);
    this.visible = true;
  }

  void update() {
    if (frameCount % flashInterval == 0) {
      if (random(1) < 0.3) {
        visible = !visible;
      }
    }
  }

  void display() {
    if (visible) {
      strokeWeight(1.5);
      stroke(0, 0, 85);
      point(x, y);
    }
  }
}
