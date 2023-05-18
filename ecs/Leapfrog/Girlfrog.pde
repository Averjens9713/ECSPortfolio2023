class Girlfrog {
  int x, y;
  PImage girlfrog;

  Girlfrog() {
    x = int(random(25,575));
    y = int(random(100,550));
    girlfrog = loadImage("Girlfrog.png");
  }

  void display() {
    imageMode(CENTER);
    girlfrog.resize(100,100);
    image(girlfrog,x,y);
  }

  void move(char dir) {
    if (dir == 'w') {
      y = y - 10;
    } else if (dir == 's') {
      y = y + 10;
    } else if (dir == 'a') {
      x = x - 10;
    } else if (dir == 'd') {
      x = x + 10;
    }
  }
}
