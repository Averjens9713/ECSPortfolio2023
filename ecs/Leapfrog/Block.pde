class Block {
  int x, y;
  PImage block;

  Block() {
    x = int(random(25,575));
    y = int(random(100,550));
    block = loadImage("Box.png");
  }

  void display() {
    imageMode(CENTER);
    block.resize(175,175);
    image(block,x,y);
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
