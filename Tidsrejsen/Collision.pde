ArrayList<CollisionDetection> hitBoxObjects = new ArrayList<CollisionDetection>();

class CollisionDetection {
  int id;
  PVector pos, size;
  float x1, x2, y1, y2;
  String type;

  CollisionDetection () {
  }

  void init(int id_, PVector pos_, PVector size_, String type_) {
    id = id_;
    pos = pos_;
    size = size_;
    type = type_;
    x1 = pos_.x;
    x2 = pos_.x + size_.x;
    y1 = pos_.y;
    y2 = pos_.y + size_.y;
    
    addToHitBoxObj();
  }
  
  void updateThis(PVector pos_) {
    pos = pos_;
    x1 = pos_.x;
    x2 = pos_.x + size.x;
    y1 = pos_.y;
    y2 = pos_.y + size.y;
  }
 
  void addToHitBoxObj() {
    hitBoxObjects.add(this);
  }
  
  void removeHitBoxObj() {
    hitBoxObjects.remove(this);
  }
  
  void customDraw() {
    
  }
  
  boolean collide(CollisionDetection obj1, PVector pos, PVector size, String type) {
    boolean xCollide = false;
    boolean yCollide = false;
    for (CollisionDetection obj2 : hitBoxObjects) {
      xCollide = false;
      yCollide = false;
      println(obj2);
      if (obj2.id != id) {
        // Tjek om der er collision på x-aksen
        if (pos.x >= obj2.x1 && pos.x <= obj2.x2 || pos.x + size.x >= obj2.x1 && pos.x + size.x <= obj2.x2) {
          xCollide = true;
        }

        // Tjek om der er collision på y-aksen
        if (pos.y >= obj2.y1 && pos.y <= obj2.y2 || pos.y + size.y >= obj2.y1 && pos.y + size.y <= obj2.y2) {
          yCollide = true;
        }

        if (xCollide && yCollide) {
          if(obj2 instanceof Hunger) 
            ((Hunger)obj2).addSpeed((Player)obj1);    
          return true;
        }
      }
    }
    return false;
  }
}
