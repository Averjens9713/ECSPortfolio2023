// Avery Jensen | April 25 | Leapfrog
boolean play;
Frog f1;
Girlfrog f2;
Block f3;
int score;
float girlfrogDist, blockDist;

void setup() {
  size(600, 600);
  f1 = new Frog();
  f2 = new Girlfrog();
  f3 = new Block();
  score = 0;
  play = false;
}

void draw() {
  if (!play) {
    startScreen();
  } else {
    girlfrogDist = dist(f1.x, f1.y, f2.x, f2.y);
    println(girlfrogDist);
    blockDist = dist(f1.x, f1.y, f3.x, f3.y);
    println(blockDist);
    background(#8CE3D8);
    infoPanel();
    f1.display();
    f2.display();
    f3.display();

    if (girlfrogDist<50) {
      score = score + 100;
      f3.x = int(random(25, 575));
      f3.y = int(random(50, 575));
      f2.x = int(random(25, 575));
      f2.y = int(random(50, 575));
    }

    if (blockDist<50) {
      gameOver();
    }
    if (f1.y>height || f1.x<0 || f1.x>width) {
      gameOver();
    }
  }
}

void keyPressed() {
  if (key == 'w') {
    f1.move('w');
  } else if (key == 'a') {
    f1.move('a');
  } else if (key == 's') {
    f1.move('s');
  } else if (key == 'd') {
    f1.move('d');
  } else if (key == ' ') {
    play = true;
  }
}

void drawBackground() {
}

void startScreen() {
  background(#095551);
  fill(255);
  textAlign(CENTER);
  textSize(40);
  text("Leapfrog", width/2, height/2);
  textSize(20);
  text("By: Avery Jensen", width/2, 330);
  textSize(25);
  text("Press Space to Start", width/2, 360);
}

void gameOver() {
  background(#095551);
  fill(255);
  textAlign(CENTER);
  textSize(40);
  text("GAME OVER", width/2, height/2);
  textSize(20);
  text("Score:" + score, width/2, 330);
  textSize(25);
  text("You Hit the Box or Wall", width/2, 360);
  noLoop();
}

void infoPanel() {
  fill(255, 150);
  rect(0, 0, width, 50);
  fill(0);
  textSize(15);
  text("Score: " + score, 28, 30);
}
