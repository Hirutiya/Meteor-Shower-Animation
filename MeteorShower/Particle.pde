class Particle {
  float x, y;
  boolean visible;

  Particle() {
    this.x = random(width);
    this.y = random(height);
    this.visible = true;
  }

  void update() {
    if (random(1) < 0.3) {
      visible = !visible;
    }
  }

  void display() {
    if (visible) {
      point(x, y);
    }
  }
}