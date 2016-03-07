
//creating a code using text to prompt you
//I didnt take many notes, per say, but ask if youre not understanding something! I remember it pretty well.



//pieces:
//canvas
//boundaries
//motion of the ball: speed+direction variables xSpeed and ySpeed
//position + radius of the ball - x, y, radius
//bouncing of the ball at boundaries - check x, radius against 0 & width. Check y, radius against 0 & height
//detect hitting the boundary
//changing the direction of the ball - when hits boundaries, changes xSpeed from positive to negative number




int x;
int y;
int radius;
int xspeed;
int yspeed;

void setup() {
  size(500, 500);
  radius = 5;
  x = 15;
  y = 15;
  xspeed = 3;
  yspeed = 4;
}

void draw() {
  background(255);

  ellipse(x, y, radius*2, radius*2);
  fill(0);

  x = x + xspeed;
  y = y + yspeed;


  if (x + radius >= width || x - radius <= 0) {
    xspeed = -xspeed;
  }
  if (y + radius >= height || y - radius <= 0) {
    yspeed = -yspeed;
  }
}
