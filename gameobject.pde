class GameObject {
  float x, y, vx, vy, size;
  int lives; //hitpoint
  color c;

  GameObject() {
  }


  void act() {
    x +=vx;
    y +=vy;
  }


  void show() {
    fill(c);
    square (x, y, size);
  }
}
