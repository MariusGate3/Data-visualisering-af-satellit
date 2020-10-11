PImage earth;
PShape globe;
PImage bg;

float r = 200;
float angle;

// intitialisering af satelliter
Satellite s1 = new Satellite("46384");

void setup() {  
  size(1024, 720, P3D);
  frameRate(30);
  bg = loadImage("bg.jpg");
  earth = loadImage("earth.jpg");
  noStroke();
  globe = createShape(SPHERE, r);
  globe.setTexture(earth);
  bg.resize(width, height);
}

void draw() {

  background(bg);
  translate(width/2, height/2);
  rotateY(angle);
  angle += 0.05;
  fill(200);
  noStroke();
  float r = 200;

  shape(globe);

  // tegn satelliterne

  s1.tegnSatellit();
  // roter planeten
}
