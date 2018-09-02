void setup() {
  size(400, 400);
  branch(0, 200, 400, 100);
  pushMatrix();
  translate(200, 400);
  rotate(0);
  line(0, 0, 0, -30);
  popMatrix();
}

void draw() {
  background(255);
  branch(0,200,400,100);
}

void branch(float angle, float x, float y, float len) {
  if (len > 1) {
    pushMatrix();
    translate(x, y);
    rotate(angle);
    line(0, 0, 0, -len);
    popMatrix();
    branch(angle+.2, x+sin(angle)*len, y-cos(angle)*len, len*2.0/3);
    branch(angle-.2, x+sin(angle)*len, y-cos(angle)*len, len*2.0/3);
  }
}
