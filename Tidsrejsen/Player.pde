class Player extends CollisionDetection {
  // PVector pos, size; lavet i collision
  PVector vel = new PVector(10, 10);
  String imageName;
  int id;
  int points;
  int hitBoxObjIdx; // Indekset hvor denne sprite ligger

  Player (PVector pos_, PVector size_, int id_) {
    pos = pos_;
    size = size_;
    id = id_;

    hitBoxObjIdx = addHitBoxObject(id, pos, size);
  }

  void update () {
    rect(pos.x, pos.y, size.x, size.y);
    updateHitBoxObject(hitBoxObjIdx, pos, size);
  }

  void moveUp() {
    PVector newPos = pos;
    newPos.y -= vel.y;
    if (!collide(id, newPos, size)) {
      pos.y -= vel.y;
    } else {
      pos.y += vel.y;
    }
  }

  void moveDown() {
    PVector newPos = pos;
    newPos.y += vel.y;
    if (!collide(id, newPos, size)) {
      pos.y += vel.y;
    } else {
      pos.y -= vel.y;
    }
  }

  void moveLeft() {
    PVector newPos = pos;
    newPos.x -= vel.x;
    if (!collide(id, newPos, size)) {
      pos.x -= vel.x;
    } else {
      pos.x += vel.x;
    }
  }

  void moveRight() {
    PVector newPos = pos;
    newPos.x += vel.x;
    if (!collide(id, newPos, size)) {
      pos.x += vel.x;
    } else {
      pos.x -= vel.x;
    }
  }
}
