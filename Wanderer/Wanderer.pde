//declare variables
int quantity = 30;
float diam;
//coords = coordinates; velka = velocity
PVector[] coords = new PVector[quantity];
PVector[] velka = new PVector[quantity];

void setup() {
  //set size of canvas
  size(800, 600);
  noStroke();
  smooth();
  for (int i = 0; i < quantity; i++) {
    //initialize variables
    diam = 40;
    coords[i] = new PVector(width/2, height/2);
    velka[i] = new PVector(random(-5, 5), random(-5, 5));
  }
}

void draw() {
  //draw background to cover previous frame
  background(0);
  for (int i = 0; i < quantity; i++) {
    //draw ball
    ellipse(coords[i].x, coords[i].y, diam, diam);

    //add velocity to position
    coords[i].add(velka[i]);

    //wrap the ball's position
    if (coords[i].x - diam/2 >= width && velka[i].x > 0) {
      coords[i].x = -diam/2;
    } else if (coords[i].x + diam/2 <= 0 && velka[i].x < 0) {
      coords[i].x = width + diam/2;
    }
    if (coords[i].y - diam/2 >= height && velka[i].y > 0) {
      coords[i].y = -diam/2;
    } else if (coords[i].y + diam/2 <= 0 && velka[i].y < 0) {
      coords[i].y = height + diam/2;
    }
  }
}