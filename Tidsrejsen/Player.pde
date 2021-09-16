class Player extends CollisionDetection {
  // PVector pos, size; lavet i collision
  PVector vel = new PVector(10, 10);
  String imageName;
  int id;
  int points;

  Player (PVector pos_, PVector size_, int id_) {
    pos = pos_;
    size = size_;
    id = id_;

    super.updateHitBoxObjects(id, pos, size);
  }

  void update () {
    rect(pos.x, pos.y, size.x, size.y);
    if (super.collide(id, pos, size)) {
      // Gør noget her..
    }
  }
}
