class Starfighter extends GameObject {
  boolean AI;

  //initialize spaceship
  Starfighter() {
    x = width/2;
    y = height/2;
    vx =0;
    vy = 0;
    lives = 3;
    size= 40;
    c = yellow1;
  }

  void act() {
    if (rightkey ) vx= 5;
    if (leftkey) vx = -5;
    if (upkey) vy =-5;
    if (downkey) vy =5;
    
    if (!upkey && !downkey) vy = vy *0.9;
    if (!leftkey && !rightkey)vx = vx * 0.9;


    if (space) objects.add(new Bullet());
    super.act();
  }
}
