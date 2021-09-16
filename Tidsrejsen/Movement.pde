boolean w, a, s, d;
boolean up, left, down, right;

void keyPressed () {
  if (key == 'w') {
    w = true;
  }
  if (key == 'a') {
    a = true;
  }
  if (key == 's') {
    s = true;
  }
  if (key == 'd') {
    d = true;
  }
  if (keyCode==UP) {
    up = true;
  }
  if (keyCode==LEFT) {
    left = true;
  }
  if (keyCode==DOWN) {
    down = true;
  }
  if (keyCode==RIGHT) {
    right = true;
  }
}

void keyReleased () {
  if (key == 'w') {
    w = false;
  }
  if (key == 'a') {
    a = false;
  }
  if (key == 's') {
    s = false;
  }
  if (key == 'd') {
    d = false;
  }
  if (keyCode==UP) {
    up = false;
  }
  if (keyCode==LEFT) {
    left = false;
  }
  if (keyCode==DOWN) {
    down = false;
  }
  if (keyCode==RIGHT) {
    right = false;
  }
}

void controls () {
  if (w) {
    p1.pos.y -= p1.vel.y;
  }
  if (s) {
    p1.pos.y += p1.vel.y;
  }
  if (d) {
    p1.pos.x += p1.vel.x;
  }
  if (a) {
    p1.pos.x -= p1.vel.x;
  }

  if (up) {
    p2.pos.y -= p2.vel.y;
  }
  if (down) {
    p2.pos.y += p2.vel.y;
  }
  if (right) {
    p2.pos.x += p2.vel.x;
  }
  if (left) {
    p2.pos.x -= p2.vel.x;
  }
}
