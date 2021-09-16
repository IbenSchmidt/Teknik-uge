class Player {
  PVector pos, size;
  PVector vel = new PVector(10, 10);
  String imageName;
  int id;
  int points;

  Player (PVector pos_, PVector size_, int id_) {
    pos = pos_;
    size = size_;
    id = id_;
  }

  void update () {
    rect(pos.x, pos.y, size.x, size.y);
  }
}
