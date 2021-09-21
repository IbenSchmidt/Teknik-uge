class Player extends CollisionDetection {
  // PVector pos, size; lavet i collision
  PVector vel = new PVector(2, 2);
  String imageName;
  int points;

  Player (PVector pos_, PVector size_, int id_) {
    pos = pos_;
    size = size_;
    id = id_;

    super.init(id_, pos, size, "player");
  }

  void customDraw() {
    rect(pos.x, pos.y, size.x, size.y);
  }

  void moveUp() {
    PVector newPos = pos;
    newPos.y -= vel.y;
    if (collide(this, newPos, size, "player")) {
      do {
        pos.y += vel.y;
      } while (collide(this, newPos, size, "player"));
    } else {
      pos.y -= vel.y;
    }
  }

  void moveDown() {
    PVector newPos = pos;
    newPos.y += vel.y;
    if (collide(this, newPos, size, "player")) {
      do {
        pos.y -= vel.y;
      } while (collide(this, newPos, size, "player"));
    } else {
      pos.y += vel.y;
    }
  }

  void moveLeft() {
    PVector newPos = pos;
    newPos.x -= vel.x;
    if (collide(this, newPos, size, "player")) {
      do{
        pos.x += vel.x;
      } while (collide(this, newPos, size, "player"));
    } else {
      pos.x -= vel.x;
    }
  }

  void moveRight() {
    PVector newPos = pos;
    newPos.x += vel.x;
    if (collide(this, newPos, size, "player")) {
      do{
        pos.x -= vel.x;
      } while (collide(this, newPos, size, "player"));
    } else {
      pos.x += vel.x;
    }
  }
}
