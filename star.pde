 class Star extends GameObject {
  Star() {
    x = random( 0, width);
    y= 0;
    vx= 0;
    size = random(1, 6);
    vy = size;
    lives=1;
    c=#FFFFFF;
  }

  void act() {
    super.act();
    
    if (y > height) {
      lives =0;
    }
  }
}
