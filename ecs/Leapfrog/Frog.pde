class Frog {
  int x, y;
  PImage frog;

  Frog() {
    x = width-50;
    y = height-50;
    frog = loadImage("New Piskel (2).png");
  }

  void display() {
    imageMode(CENTER);
    frog.resize(100,100);
    image(frog,x,y);
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
    } else if (dir == ' ') {
      y = y - 40;
    }
  }
}
