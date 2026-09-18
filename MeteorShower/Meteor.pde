class Meteor {
  float angle;
  float radius;
  float speed;
  float meteorLength;
  
  float minSpeed = 0.005;
  float maxSpeed = 0.015;
  
  float cX, cY;

  Meteor(float centerX, float centerY, boolean randomStart) {
    this.cX = centerX;
    this.cY = centerY;
    init(randomStart);
  }

  void init(boolean randomStart) {
    this.angle = randomStart ? random(0, PI) : PI; 
    this.radius = random(width * 0.3, width * 0.6);
    this.speed = random(minSpeed, maxSpeed);
    this.meteorLength = random(0.02, 0.06);
  }

  void update() {
    angle -= speed;       
    if (angle < 0) {
      init(false);
    }
  }

  void display() {
    float hue = map(radius, width * 0.3, width * 0.6, 180, 320); 
    stroke(hue, 80, 100);

    float thickness = map(speed, minSpeed, maxSpeed, 1.5, 3.5);
    strokeWeight(thickness);

    float headX = cX + cos(angle) * radius;
    float headY = cY - sin(angle) * radius; 

    float tailAngle = angle + meteorLength;
    float tailX = cX + cos(tailAngle) * radius;
    float tailY = cY - sin(tailAngle) * radius;

    line(headX, headY, tailX, tailY);
  }
}
