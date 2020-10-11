PImage earth;
PShape globe;
PImage bg;

float r = 200;
float angle;

// intitialisering af satelliter
Satellite s1 = new Satellite("46384");
Satellite s2 = new Satellite("46383");
Satellite s3 = new Satellite("46382");



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
  translate(width*0.5, height*0.5);
  rotateY(angle);
  angle += 0.05;
  lights();
  fill(200);
  noStroke();
  shape(globe);

// tegn satelliterne

s1.tegnSatellit();
s2.tegnSatellit();
s3.tegnSatellit();


  // roter planeten

}
