void game() {
  objects.add(0, new Star());
  background(0);

  int i = 0;
  while (i < objects.size()) {

    GameObject o = objects.get(i);
    o.act();
    o.show();
    if (o.lives == 0) {
      objects.remove(i);
    } else {
      i++;
    }
  }
  text(frameRate, 10, 10);
  text( objects.size(), 10, 30);
}

void gameClicks() {
  mode = PAUSE;
}
