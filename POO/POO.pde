class Spot {

  float x, y;
  // X-coordinate, y-coordinate

  float diameter;
  // Diameter of the circle

  float speed;
  // Distance moved each frame

  int direction = 1;
  // Motion Direction(1 is down, -1 is up)

  Spot(float xpos, float ypos, float dia, float sp) {

    // Constructor

    x = xpos;

    y = ypos;

    diameter = dia;

    speed = sp;
  }

  void move() {

    y += (speed * direction);

    if ((y > (height - diameter / 2)) || (y < diameter / 2)) {

      direction *= -1;
    }
  }

  void display() {
    triangle(x, y, x, y+48, x-25, y+25);
    triangle(x+60, y, x+60, y+48, x+85, y+25);
    rect(x, y, diameter, diameter, 0, 0, 20, 20);

    rect(x+15, y+80, 30, y);
    fill(0);
    ellipse(x+30, y+60, 33, 20);
  }
}
Spot sp1, sp2, sp3, sp4, sp5, sp6; // Declare the objects

void setup() {

  size(700, 700);

  smooth();

  noStroke();

  sp1 = new Spot(90, 50, 60, 2.0); // Construct sp1

  sp2 = new Spot(320, 50, 60, 1.0); // Construct sp2

  sp3 = new Spot(550, 50, 60, 1.5); // Construct sp3
}

void draw() {

  fill(157, 167, 167);
  rect(0, 0, width, height);


  line(10, 0, 10, 700);
  line(690, 0, 690, 700);
  line(235, 0, 235, 700);
  line(465, 0, 465, 700);
  stroke(255);

  fill(26, 216, 232);
  sp1.move();
  sp1.display();


  fill(0, 255, 0);
  sp2.move();
  sp2.display();

  fill(0, 0, 255);
  sp3.move();
  sp3.display();
}
