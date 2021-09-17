/* Denne fil indeholder alle de forskellige og specifikke sprites for hvert level
 * 
 * 
 */
 
 
class LevelObstacle extends CollisionDetection{
  int id;
  PVector pos, size;
}
 
class Hunger extends LevelObstacle {
  String imageName;
  int hitBoxObjIdx;
  
  Hunger (PVector pos_, PVector size_, int id_) {
    id = id_;
    pos = pos_;
    size = size_;
    
    hitBoxObjIdx = addHitBoxObject(id, pos, size, "obstacle", new Runnable() { public void run() {addSpeed();}});
  }
  
  void update() {
    rect(pos.x, pos.y, size.x, size.y);
  }
  
  void addSpeed() {
    // Tilføj fart i til spilleren
    // Fjern dette objekt fra spillet
  }
}
