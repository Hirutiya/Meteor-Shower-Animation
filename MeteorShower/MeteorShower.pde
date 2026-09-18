ArrayList<Meteor> meteors = new ArrayList<Meteor>();
ArrayList<Particle> particles = new ArrayList<Particle>();

int meteor_num = 100;
int bgParticles_num = 150;
float centerX, centerY;

void setup() {
  size(1920, 1080);
  colorMode(HSB, 360, 100, 100);
  
  centerX = width / 2;
  centerY = height; 

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

  for (Particle p : particles) {
    p.update();
    p.display();
  }

  for (Meteor m : meteors) {
    m.update();
    m.display();
  }
}
