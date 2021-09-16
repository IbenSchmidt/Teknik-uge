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

    hitBoxObjIdx = updateHitBoxObjects(id, pos, size);
  }

  void update () {
    rect(pos.x, pos.y, size.x, size.y);
  }

  void moveUp() {
    
    if (collide(id, pos, size)) {
      // println(random(1));
    } else {
      pos.y -= vel.y;
    }
  }

  void moveDown() {
    if (collide(id, pos, size)) {
      // println(random(1));
    } else {
      pos.y += vel.y;
    }
  }

  void moveLeft() {
    if (collide(id, pos, size)) {
      pos.x += vel.x;
    } else {
      pos.x -= vel.x;
    }
  }

  void moveRight() {
    if (collide(id, pos, size)) {
      pos.x -= vel.x;
    } else {
      pos.x += vel.x;
    }
  }
}
