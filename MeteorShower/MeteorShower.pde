ArrayList<Meteor> meteors = new ArrayList<Meteor>();
ArrayList<Particle> particles = new ArrayList<Particle>();

int meteor_num = 100;
int bgParticles_num = 150;
int flashInterval = 40;

float centerX, centerY;
color starColor;

void setup() {
  size(1920, 1080);
  
  pixelDensity(1);
  colorMode(HSB, 360, 100, 100);
  frameRate(60);
  
  centerX = width / 2;
  centerY = height;
  
  starColor = color(0, 0, 85);

  for (int i = 0; i < meteor_num; i++) {
    meteors.add(new Meteor(centerX, centerY, true));
  }

  for (int j = 0; j < bgParticles_num; j++) {
    particles.add(new Particle());
  }
}

void draw() {
  noStroke();
  fill(0, 25); 
  rect(0, 0, width, height);

  stroke(starColor);
  strokeWeight(1.5);
  boolean flash = (frameCount % flashInterval == 0);

  for (int i = 0; i < particles.size(); i++) {
    Particle p = particles.get(i);
    if (flash) {
      p.update();
    }
    p.display();
  }

  for (int i = 0; i < meteors.size(); i++) {
    Meteor m = meteors.get(i);
    m.update();
    m.display();
  }
}
