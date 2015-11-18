//declare variables
float diam;
PVector coords, velka;

void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  diam = 80;
  coords = new PVector(width/2, height/2);
  velka = new PVector(random(-5,5), random(-5,5));
}

void draw() {
  //draw background to cover previous frame
  background(0);

  //draw ball
  ellipse(coords.x, coords.y, diam, diam);

  //add velocity to position
  coords.add(velka);

  //wrap the ball's position
  if (coords.x + diam/2 >= width) {
    coords.x = -diam/2;     
  } else if (coords.x - diam/2 <= 0) {
    coords.x = width + diam/2;
  }
  if (coords.y + diam/2 >= height) {
    coords.y = -diam/2;
  } else if (coords.y - diam/2 <= 0) {
    coords.y = height + diam/2;
  }
}